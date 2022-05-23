package com.cloud.common.model.dto;

import com.cloud.common.enums.IntegralSourceEnum;
import com.cloud.common.enums.IntegralTypeEnum;
import lombok.Builder;
import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * @author zhuwj
 * @date 2022/05/23 22:50
 * @description: 积分对象
 **/
@Data
@Builder
public class IntegralDTO implements Serializable {
    private static final long serialVersionUID = 510364419281184694L;
    /**
     * 积分数量
     */
    private Integer integralNum;
    /**
     * 积分来源类型
     */
    private IntegralSourceEnum integralSourceEnum;
    /**
     * 积分数据类型
     */
    private IntegralTypeEnum integralTypeEnum;
    /**
     * 用户id
     */
    private Long userId;
    /**
     * 积分获取时间
     */
    private LocalDateTime integralTime;
}
