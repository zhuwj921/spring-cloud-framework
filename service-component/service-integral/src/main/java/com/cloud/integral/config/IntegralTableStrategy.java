package com.cloud.integral.config;

import cn.hutool.core.convert.Convert;
import cn.hutool.core.util.HashUtil;
import cn.hutool.core.util.StrUtil;
import io.shardingsphere.api.algorithm.sharding.PreciseShardingValue;
import io.shardingsphere.api.algorithm.sharding.standard.PreciseShardingAlgorithm;
import lombok.extern.slf4j.Slf4j;

import java.time.LocalDateTime;
import java.util.Collection;

/**
 * @author zhuwj
 * @date 2022/05/22 22:34
 * @description: 积分表分表策略 标准分片策略
 **/
@Slf4j
public class IntegralTableStrategy implements PreciseShardingAlgorithm<Long> {
    @Override
    public String doSharding(Collection<String> collection, PreciseShardingValue<Long> preciseShardingValue) {
        String logicTableName = preciseShardingValue.getLogicTableName();
        String columnName = preciseShardingValue.getColumnName();
        Comparable value = preciseShardingValue.getValue();
        int year = LocalDateTime.now().getYear();
        log.info("logicTableName:{},columnName:{},value:{}", logicTableName, columnName, value);
        int hashValue = HashUtil.fnvHash(Convert.toStr(value));
        int suffix = hashValue % IntegralRecordConfig.TABLE_NODES;
        String tableName = StrUtil.format("{}_{}_{}", IntegralRecordConfig.TABLE_PREFIX_NAME, year, suffix);
        log.info("IntegralTableStrategy tableName: {}", tableName);
        return tableName;
    }
}
