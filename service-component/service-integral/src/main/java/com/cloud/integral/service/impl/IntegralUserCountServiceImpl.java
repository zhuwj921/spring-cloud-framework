package com.cloud.integral.service.impl;

import com.cloud.common.model.dto.IntegralDTO;
import com.cloud.integral.entity.IntegralUserCount;
import com.cloud.integral.manager.IntegralUserCountManager;
import com.cloud.integral.mapper.IntegralUserCountMapper;
import com.cloud.integral.service.IIntegralUserCountService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author zhuwj
 * @since 2022-05-29
 */
@RequiredArgsConstructor
@Service
public class IntegralUserCountServiceImpl extends ServiceImpl<IntegralUserCountMapper, IntegralUserCount> implements IIntegralUserCountService {

    private final IntegralUserCountManager integralUserCountManager;

    @Override
    public void integralCountAndRecordChange(IntegralDTO integral) {
        integralUserCountManager.integralCountAndRecordChange(integral);
    }
}
