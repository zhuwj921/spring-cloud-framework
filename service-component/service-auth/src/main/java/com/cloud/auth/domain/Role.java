package com.cloud.auth.domain;

import com.cloud.common.base.BaseEntity;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Description: 角色
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-10-09
 */
@Data
@Entity
@Table(name = "auth_role")
public class Role extends BaseEntity {

    @Column(name = "key", nullable = false, unique = true)
    private String key;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "remark")
    private String remark;

}
