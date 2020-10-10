package com.cloud.auth.service.impl;

import com.cloud.auth.domain.Resource;
import com.cloud.auth.repository.ResourceRepository;
import com.cloud.auth.service.ResourceService;
import com.cloud.common.base.BaseServiceImpl;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

/**
 * @author: zhuwj
 * @date: 2020/9/26 0:18
 * @description:
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class ResourceServiceImpl extends BaseServiceImpl<Resource> implements ResourceService {

    private final ResourceRepository resourceRepository;

}
