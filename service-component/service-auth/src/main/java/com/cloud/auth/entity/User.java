package com.cloud.auth.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.cloud.common.base.BaseEntity;
import io.swagger.annotations.ApiModel;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

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
@TableName("auth_user")
@ApiModel(value = "User对象", description = "用户")
public class User extends BaseEntity {

    @TableField("email")
    private String email;

    @TableField("gender")
    private Integer gender;

    @TableField("last_login_time")
    private LocalDateTime lastLoginTime;

    @TableField("nick_name")
    private String nickName;

    @TableField("password")
    private String password;

    @TableField("phone")
    private String phone;

    @TableField("username")
    private String username;


}
