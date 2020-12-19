package com.cloud.common.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * Description: 响应code枚举
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-09-23
 */

@AllArgsConstructor
@Getter
public enum  ResponseCodeEnum {
    /**
     * 请求成功
     */
    OK("00000", "OK"),
    /**
     * 请求失败
     */
    ERROR("11111", "ERROR");

    private String code;

    private String msg;


}
