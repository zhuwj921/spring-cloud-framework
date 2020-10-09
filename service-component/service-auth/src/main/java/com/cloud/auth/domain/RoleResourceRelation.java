package com.cloud.auth.domain;

import com.cloud.common.base.BaseEntity;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Description: 角色与资源
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-10-09
 */
@Data
@Entity
@Table(name = "auth_role_resource_relation")
public class RoleResourceRelation extends BaseEntity {

    @Column(name = "role_id")
    private Long roleId;

    @Column(name = "resource_id")
    private Long resourceId;



}
