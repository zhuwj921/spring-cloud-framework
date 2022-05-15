package com.cloud.auth.service.impl;

import com.cloud.auth.entity.Resource;
import com.cloud.auth.mapper.ResourceMapper;
import com.cloud.auth.service.IResourceService;
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
public class ResourceServiceImpl extends ServiceImpl<ResourceMapper, Resource> implements IResourceService {

}
