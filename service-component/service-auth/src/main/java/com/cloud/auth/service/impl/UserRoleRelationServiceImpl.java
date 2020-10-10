package com.cloud.auth.service.impl;

import com.cloud.auth.domain.UserRoleRelation;
import com.cloud.auth.repository.UserRoleRelationRepository;
import com.cloud.auth.service.UserRoleRelationService;
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
public class UserRoleRelationServiceImpl extends BaseServiceImpl<UserRoleRelation> implements UserRoleRelationService {

    private final UserRoleRelationRepository userRoleRelationRepository;

}
