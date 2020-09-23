package com.cloud.common.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

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

    OK("00000", "OK"),
    ERROR("11111", "ERROR");

    private String code;

    private String msg;


}
