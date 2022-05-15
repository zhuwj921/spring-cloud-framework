package com.cloud.common.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * Description: 积分类型
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-09-23
 */

@AllArgsConstructor
@Getter
public enum IntegralTypeEnum {
    /**
     * 增加
     */
    GIVE(1, "增加"),
    /**
     * 消费
     */
    CONSUMER(2, "消费");

    private final Integer code;

    private final String label;


}
