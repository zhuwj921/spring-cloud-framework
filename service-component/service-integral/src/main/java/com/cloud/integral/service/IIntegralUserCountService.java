package com.cloud.integral.service;

import com.cloud.common.model.dto.IntegralDTO;
import com.cloud.integral.entity.IntegralUserCount;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author zhuwj
 * @since 2022-05-29
 */
public interface IIntegralUserCountService extends IService<IntegralUserCount> {

    /**
     * 积分统计和积分记录操作
     *
     * @param integral
     */
    void integralCountAndRecordChange(IntegralDTO integral);
}
