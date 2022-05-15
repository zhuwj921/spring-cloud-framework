package com.cloud.gateway.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.cloud.common.base.BaseEntity;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
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
@TableName("gateway_request_log")
@ApiModel(value = "RequestLog对象", description = "")
public class RequestLog extends BaseEntity {

    @ApiModelProperty("请求url")
    @TableField("request_url")
    private String requestUrl;

    @ApiModelProperty("请求用户名称")
    @TableField("request_username")
    private String requestUsername;


}
