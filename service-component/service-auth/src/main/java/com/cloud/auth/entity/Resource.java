package com.cloud.auth.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.cloud.common.base.BaseEntity;
import io.swagger.annotations.ApiModel;
import lombok.Getter;
import lombok.Setter;

/**
 * <p>
 * 
 * </p>
 *
 * @author zhuwj
 * @since 2022-05-15
 */
@Getter
@Setter
@TableName("auth_resource")
@ApiModel(value = "Resource对象", description = "资源")
public class Resource extends BaseEntity {

    @TableField("resource_key")
    private String resourceKey;

    @TableField("resource_name")
    private String resourceName;

    @TableField("p_id")
    private Long pId;

    @TableField("remark")
    private String remark;

    @TableField("resource_type")
    private Integer resourceType;

    @TableField("url")
    private String url;


}
