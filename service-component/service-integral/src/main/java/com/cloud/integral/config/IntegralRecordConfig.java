package com.cloud.integral.config;

/**
 * @author zhuwj
 * @date 2022/05/23 20:40
 * @description: 积分表基础信息
 **/
public interface IntegralRecordConfig {
    /**
     * 表名称前缀
     */
    String TABLE_PREFIX_NAME = "integral_record";
    /**
     * 表切片数量
     */
    int TABLE_NODES = 256;
    /**
     * 数据库切片数量
     */
    int DATABASE_NODES = 4;
    /**
     * 数据库前缀
     */
    String DATABASE_PREFIX_NAME = "ds";

}
