package com.cloud.integral.config;

import cn.hutool.core.convert.Convert;
import cn.hutool.core.util.HashUtil;
import cn.hutool.core.util.StrUtil;
import io.shardingsphere.api.algorithm.sharding.PreciseShardingValue;
import io.shardingsphere.api.algorithm.sharding.standard.PreciseShardingAlgorithm;
import lombok.extern.slf4j.Slf4j;

import java.util.Collection;

/**
 * @author zhuwj
 * @date 2022/05/22 22:34
 * @description: 积分库分库策略 标准分片策略
 **/
@Slf4j
public class IntegralDatabaseStrategy implements PreciseShardingAlgorithm<Long> {
    @Override
    public String doSharding(Collection<String> collection, PreciseShardingValue<Long> preciseShardingValue) {
        //可以获取三个值，也就是course逻辑表名，columnName id,value 获取的值
        String logicTableName = preciseShardingValue.getLogicTableName();
        String columnName = preciseShardingValue.getColumnName();
        Comparable value = preciseShardingValue.getValue();
        log.info("logicTableName:{},columnName:{},value:{}", logicTableName, columnName, value);
        int hashValue = HashUtil.fnvHash(Convert.toStr(value));
        int suffix = hashValue % IntegralRecordConfig.DATABASE_NODES;
        String database = StrUtil.format("{}{}", IntegralRecordConfig.DATABASE_PREFIX_NAME, suffix);
        log.info("IntegralDatabaseStrategy database: {}", database);
        return database;
    }
}
