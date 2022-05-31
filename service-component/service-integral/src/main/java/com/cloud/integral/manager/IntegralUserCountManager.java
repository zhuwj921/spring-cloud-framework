package com.cloud.integral.manager;

import cn.hutool.core.convert.Convert;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.cloud.common.enums.IntegralTypeEnum;
import com.cloud.common.exception.RedissonException;
import com.cloud.common.model.dto.IntegralDTO;
import com.cloud.integral.entity.IntegralRecord;
import com.cloud.integral.entity.IntegralUserCount;
import com.cloud.integral.facade.kafka.conveter.IntegralConverter;
import com.cloud.integral.mapper.IntegralErrorRecordMapper;
import com.cloud.integral.mapper.IntegralRecordMapper;
import com.cloud.integral.mapper.IntegralUserCountMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.redisson.api.RScoredSortedSet;
import org.redisson.api.RedissonClient;
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

    private static final String TOTAL_SCORES = "Total_Scores_Rank";

    private final IntegralRecordMapper integralRecordMapper;

    private final IntegralUserCountMapper integralUserCountMapper;

    private final IntegralErrorRecordMapper integralErrorRecordMapper;

    private final RedissonClient redissonClient;

    /**
     * 积分统计和积分记录操作
     *
     * @param integral 积分对象
     * @return 总积分数
     */
    @Transactional(rollbackFor = Exception.class)
    public Integer integralCountAndRecordChange(IntegralDTO integral) {
        Long userId = integral.getUserId();
        IntegralRecord queryData = new IntegralRecord();
        queryData.setIntegralNo(integral.getIntegralNo());
        queryData.setCreateBy(integral.getUserId());
        QueryWrapper<IntegralRecord> queryWrapper = new QueryWrapper<>();
        queryWrapper.setEntity(queryData);
        IntegralRecord queryResult = integralRecordMapper.selectOne(queryWrapper);
        if (queryResult != null) {
            log.info("userId:{} IntegralNo: {} have exist", userId, integral.getIntegralNo());
            return null;
        }
        //积分添加
        IntegralRecord integralRecord = IntegralConverter.toIntegralRecord(integral);
        integralRecordMapper.insert(integralRecord);
        //积分统计数据添加
        int totalIntegral = integralCountChange(integral);
        return totalIntegral;
    }

    /**
     * @param userId
     * @param totalIntegral
     */
    public void totalIntegralRankChange(Long userId, Integer totalIntegral) {
        try {
            log.info("totalIntegralRankChange userId :{} , totalIntegral: {}", userId, totalIntegral);
            RScoredSortedSet<Object> rScoredSortedSet = redissonClient.getScoredSortedSet(TOTAL_SCORES);
            rScoredSortedSet.add(Convert.toDouble(totalIntegral), userId);
        } catch (Exception e) {
            log.error("totalIntegralRankChange error ", e);
            throw new RedissonException(e.getMessage());
        }
    }

    /**
     * 积分统计变更
     *
     * @param integral 积分对象
     * @return 总计分数
     */
    private int integralCountChange(IntegralDTO integral) {
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
            return integral.getNum();
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
        return sumIntegral;
    }

}
