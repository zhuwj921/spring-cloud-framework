package com.cloud.auth.domain;

import com.cloud.common.base.BaseEntity;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Description: 资源
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-10-09
 */
@Data
@Entity
@Table(name = "auth_resource")
public class Resource extends BaseEntity {

    @Column(name = "resource_type")
    private Integer resourceType;

    @Column(name = "resource_name")
    private String name;

    @Column(name = "resource_key")
    private String key;

    @Column(name = "remark")
    private String remark;

    @Column(name = "url")
    private String url;

    @Column(name = "p_id")
    private Long pId;

}
