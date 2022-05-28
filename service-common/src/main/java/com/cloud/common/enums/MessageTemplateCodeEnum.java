package com.cloud.common.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * Description: 消息模板
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-09-23
 */

@AllArgsConstructor
@Getter
public enum MessageTemplateCodeEnum {
    /**
     * 积分错误通知模板
     */
    INTEGRAL_ERROR_NOTIFY_TEMPLATE("integral_error_notify_template", "积分错误通知模板"),
    /**
     * 每日签到
     */
    SHORT_MESSAGE_AUTHENTICATION_CODE_TEMPLATE("short_message_authentication_code", "短信消息验证码模板");

    private final String code;

    private final String label;


}
