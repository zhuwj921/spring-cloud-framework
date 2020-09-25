package com.cloud.gateway.domain;

import com.cloud.common.base.BaseEntity;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Description: 请求日志对象
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-09-24
 */

@Data
@Entity
@Table(name = "gateway_request_log")
public class RequestLog extends BaseEntity {

    /**
     *请求路径
     */
    @Column(name = "request_url")
    private String requestUrl;
    /**
     * 请求用户
     */
    @Column(name = "request_username")
    private String requestUsername;




}
