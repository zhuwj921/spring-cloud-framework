package com.cloud.auth.domain;

import com.cloud.common.base.BaseEntity;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.time.LocalDateTime;

/**
 * @author: zhuwj
 * @date: 2020/9/25 23:53
 * @description:
 */
@Data
@Entity
@Table(name = "auth_user")
public class User extends BaseEntity {
    /**
     * 用户账号
     */
    @Column(name = "username", nullable = false, unique = true)
    private String username;

    /**
     * 密码
     */
    @Column(name = "password", nullable = false)
    private String password;

    /**
     * 最后登入时间
     */
    @Column(name = "last_login_time")
    private LocalDateTime lastLoginTime;

    /**
     * 昵称
     */
    @Column(name = "nick_name")
    private String nickName;
    /**
     * 电话
     */
    @Column(name = "phone")
    private String phone;
    /**
     * 邮箱
     */
    @Column(name = "email")
    private String email;
    /**
     * 性别 (1: 男 2: 女)
     */
    @Column(name = "gender")
    private Integer gender;
}
