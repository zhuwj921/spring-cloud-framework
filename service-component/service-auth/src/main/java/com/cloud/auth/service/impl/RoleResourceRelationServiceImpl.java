package com.cloud.auth.service.impl;

import com.cloud.auth.domain.RoleResourceRelation;
import com.cloud.auth.repository.RoleResourceRelationRepository;
import com.cloud.auth.service.RoleResourceRelationService;
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
public class RoleResourceRelationServiceImpl extends BaseServiceImpl<RoleResourceRelation> implements RoleResourceRelationService {

    private final RoleResourceRelationRepository roleResourceRelationRepository;

}
