package com.cloud.integral.config;

import cn.hutool.core.convert.Convert;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.lang.Console;
import cn.hutool.core.util.HashUtil;
import io.shardingsphere.api.algorithm.sharding.PreciseShardingValue;
import io.shardingsphere.api.algorithm.sharding.standard.PreciseShardingAlgorithm;
import lombok.extern.slf4j.Slf4j;

import java.util.Collection;
import java.util.Date;

/**
 * @author zhuwj
 * @date 2022/05/22 22:34
 * @description: 积分表分表策略 标准分片策略
 **/
@Slf4j
public class IntegralTableStrategy implements PreciseShardingAlgorithm<Long> {
    @Override
    public String doSharding(Collection<String> collection, PreciseShardingValue<Long> preciseShardingValue) {
        //可以获取三个值，也就是course逻辑表名，columnName id,value 获取的值
        String logicTableName = preciseShardingValue.getLogicTableName();
        String columnName = preciseShardingValue.getColumnName();
        Comparable value = preciseShardingValue.getValue();
        int year = DateUtil.year(new Date());
        log.info("logicTableName:{},columnName:{},value:{}", logicTableName, columnName, value);
        Console.log(HashUtil.fnvHash(Convert.toStr(value)));
        return "integral_record_2022_1";
    }
}
