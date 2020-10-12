package com.cloud.mall.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * @author zhuwj
 */
@AllArgsConstructor
@Getter
public enum PayStatusEnum {
    /**
     * 等待支付
     */
    WAIT_PAY(1);

    private Integer code;


}
