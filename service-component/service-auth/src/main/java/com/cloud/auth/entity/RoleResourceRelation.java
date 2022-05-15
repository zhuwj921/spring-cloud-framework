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
@TableName("auth_role_resource_relation")
@ApiModel(value = "RoleResourceRelation对象", description = "角色与资源关系")
public class RoleResourceRelation extends BaseEntity {

    @TableField("resource_id")
    private Long resourceId;

    @TableField("role_id")
    private Long roleId;


}
