package com.cloud.common.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * Description: 积分来源
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-09-23
 */

@AllArgsConstructor
@Getter
public enum IntegralSourceEnum {
    /**
     * 请求成功
     */
    USER_REGISTER(1, "用户注册"),
    /**
     * 每日签到
     */
    EVERYDAY_SIGN(2, "每日签到");

    private final Integer code;

    private final String label;


}
