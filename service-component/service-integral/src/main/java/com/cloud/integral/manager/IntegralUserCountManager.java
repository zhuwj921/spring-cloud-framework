package com.cloud.integral.manager;

import cn.hutool.json.JSONUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.cloud.common.enums.IntegralTypeEnum;
import com.cloud.common.model.dto.IntegralDTO;
import com.cloud.integral.entity.IntegralErrorRecord;
import com.cloud.integral.entity.IntegralRecord;
import com.cloud.integral.entity.IntegralUserCount;
import com.cloud.integral.facade.kafka.conveter.IntegralConverter;
import com.cloud.integral.mapper.IntegralErrorRecordMapper;
import com.cloud.integral.mapper.IntegralRecordMapper;
import com.cloud.integral.mapper.IntegralUserCountMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author zhuwj
 * @date 2022/05/29 22:36
 * @description:
 **/
@Slf4j
@Component
@RequiredArgsConstructor
public class IntegralUserCountManager {

    private final IntegralRecordMapper integralRecordMapper;

    private final IntegralUserCountMapper integralUserCountMapper;

    private final IntegralErrorRecordMapper integralErrorRecordMapper;

    /**
     * 积分统计和积分记录操作
     *
     * @param integral
     */
    @Transactional(rollbackFor = Exception.class)
    public void integralCountAndRecordChange(IntegralDTO integral) {
        try {
            IntegralRecord queryData = new IntegralRecord();
            queryData.setIntegralNo(integral.getIntegralNo());
            queryData.setCreateBy(integral.getUserId());
            QueryWrapper<IntegralRecord> queryWrapper = new QueryWrapper<>();
            queryWrapper.setEntity(queryData);
            IntegralRecord queryResult = integralRecordMapper.selectOne(queryWrapper);
            if (queryResult != null) {
                log.info("user:{} IntegralNo: {} have exist", integral.getUserId(), integral.getIntegralNo());
                return;
            }
            //积分添加
            IntegralRecord integralRecord = IntegralConverter.toIntegralRecord(integral);
            integralRecordMapper.insert(integralRecord);

            //积分统计数据添加
            IntegralUserCount integralUserCountQueryData = new IntegralUserCount();
            integralUserCountQueryData.setCreateBy(integral.getUserId());
            QueryWrapper<IntegralUserCount> integralUserCountQueryWrapper = new QueryWrapper<>();
            integralUserCountQueryWrapper.setEntity(integralUserCountQueryData);
            IntegralUserCount integralUserCountQueryResult = integralUserCountMapper.selectOne(integralUserCountQueryWrapper);
            //积分创建
            if (integralUserCountQueryResult == null) {
                integralUserCountQueryResult = new IntegralUserCount();
                integralUserCountQueryResult.init(integral.getUserId());
                integralUserCountQueryResult.setUsername("zhuwj");
                integralUserCountQueryResult.setSumIntegral(integral.getNum());
                if (IntegralTypeEnum.GIVE == integral.getIntegralTypeEnum()) {
                    integralUserCountQueryResult.setGiveIntegral(integral.getNum());
                } else {
                    integralUserCountQueryResult.setConsumeIntegral(integral.getNum());
                }
                integralUserCountQueryResult.setIntegralRank(0);
                integralUserCountMapper.insert(integralUserCountQueryResult);
                return;
            }
            IntegralUserCount integralUserCountUpdateData = new IntegralUserCount();
            integralUserCountUpdateData.modify(integralUserCountQueryResult);
            int sumIntegral = integralUserCountQueryResult.getSumIntegral();
            if (IntegralTypeEnum.GIVE == integral.getIntegralTypeEnum()) {
                integralUserCountUpdateData.setGiveIntegral(integral.getNum() + integralUserCountQueryResult.getGiveIntegral());
                sumIntegral = sumIntegral + integral.getNum();
            } else {
                integralUserCountUpdateData.setConsumeIntegral(integral.getNum() + integralUserCountQueryResult.getConsumeIntegral());
                sumIntegral = sumIntegral - integral.getNum();
            }
            integralUserCountUpdateData.setSumIntegral(sumIntegral);
            integralUserCountUpdateData.setIntegralRank(0);
            integralUserCountMapper.updateById(integralUserCountUpdateData);
        } catch (Exception e) {
            log.error("integralCountAndRecordChange error ", e);
            IntegralErrorRecord errorRecord = new IntegralErrorRecord();
            errorRecord.init(integral.getUserId());
            errorRecord.setErrorContent(e.getMessage());
            errorRecord.setIntegralObject(JSONUtil.toJsonStr(integral));
            errorRecord.setIntegralSource(integral.getIntegralTypeEnum().getLabel());
            integralErrorRecordMapper.insert(errorRecord);
        }
    }

}
