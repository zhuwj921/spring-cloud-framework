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
@Table(name = "auth_account")
public class Account extends BaseEntity {
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
    @Column(name = "last_login_time", nullable = false)
    private LocalDateTime lastLoginTime;
}
