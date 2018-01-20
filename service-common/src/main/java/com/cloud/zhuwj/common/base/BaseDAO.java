package com.cloud.zhuwj.common.base;

import tk.mybatis.mapper.common.Mapper;

/**
 * 数据操作Mapper
 * Created by zhuwj on 2017/11/12.
 */
public interface BaseDAO<T extends BaseDO>  extends Mapper<T> {


}
