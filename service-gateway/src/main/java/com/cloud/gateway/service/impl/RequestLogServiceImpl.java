package com.cloud.gateway.service.impl;

import com.cloud.gateway.entity.RequestLog;
import com.cloud.gateway.mapper.RequestLogMapper;
import com.cloud.gateway.service.IRequestLogService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zhuwj
 * @since 2022-05-15
 */
@Service
public class RequestLogServiceImpl extends ServiceImpl<RequestLogMapper, RequestLog> implements IRequestLogService {

}
