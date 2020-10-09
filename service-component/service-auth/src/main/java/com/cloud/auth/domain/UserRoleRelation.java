package com.cloud.auth.domain;

import com.cloud.common.base.BaseEntity;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Description: 用户角色关系
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-10-09
 */
@Data
@Entity
@Table(name = "auth_user_role_relation")
public class UserRoleRelation  extends BaseEntity {

    @Column(name = "user_id", nullable = false)
    private Long userId;

    @Column(name = "role_id", nullable = false)
    private Long roleId;

}
