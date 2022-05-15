package com.cloud.integral.service.impl;

import com.cloud.integral.entity.UserCount;
import com.cloud.integral.mapper.UserCountMapper;
import com.cloud.integral.service.IUserCountService;
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
public class UserCountServiceImpl extends ServiceImpl<UserCountMapper, UserCount> implements IUserCountService {

}
