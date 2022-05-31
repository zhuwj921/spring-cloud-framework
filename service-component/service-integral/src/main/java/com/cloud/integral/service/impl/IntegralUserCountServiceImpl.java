package com.cloud.integral.service.impl;

import cn.hutool.json.JSONUtil;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cloud.common.exception.RedissonException;
import com.cloud.common.model.dto.IntegralDTO;
import com.cloud.integral.entity.IntegralErrorRecord;
import com.cloud.integral.entity.IntegralUserCount;
import com.cloud.integral.manager.IntegralUserCountManager;
import com.cloud.integral.mapper.IntegralErrorRecordMapper;
import com.cloud.integral.mapper.IntegralUserCountMapper;
import com.cloud.integral.service.IIntegralUserCountService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author zhuwj
 * @since 2022-05-29
 */
@Slf4j
@RequiredArgsConstructor
@Service
public class IntegralUserCountServiceImpl extends ServiceImpl<IntegralUserCountMapper, IntegralUserCount> implements IIntegralUserCountService {



    private final IntegralUserCountManager integralUserCountManager;

    private final IntegralErrorRecordMapper integralErrorRecordMapper;



    @Override
    public void integralCountAndRecordChange(IntegralDTO integral) {
        try {
            Integer totalIntegral = integralUserCountManager.integralCountAndRecordChange(integral);
            //排行榜
            if (totalIntegral == null) {
                return;
            }
            integralUserCountManager.totalIntegralRankChange(integral.getUserId(), totalIntegral);
        } catch (RedissonException redissonException) {
            //消息重试
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