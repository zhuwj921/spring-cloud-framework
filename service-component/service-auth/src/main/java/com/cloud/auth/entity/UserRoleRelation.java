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
@TableName("auth_user_role_relation")
@ApiModel(value = "UserRoleRelation对象", description = "用户与角色关系")
public class UserRoleRelation extends BaseEntity {

    @TableField("role_id")
    private Long roleId;

    @TableField("user_id")
    private Long userId;


}
