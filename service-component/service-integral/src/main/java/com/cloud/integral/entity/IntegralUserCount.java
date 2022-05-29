package com.cloud.integral.entity;

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
 * @since 2022-05-29
 */
@Getter
@Setter
@TableName("integral_user_count")
@ApiModel(value = "IntegralUserCount对象", description = "积分统计对象")
public class IntegralUserCount extends BaseEntity {

    @ApiModelProperty("用户名称")
    @TableField("username")
    private String username;

    @ApiModelProperty("总积分（获取积分-消费积分）")
    @TableField("sum_integral")
    private Integer sumIntegral;

    @ApiModelProperty("消费积分")
    @TableField("consume_integral")
    private Integer consumeIntegral;

    @ApiModelProperty("获取积分")
    @TableField("give_integral")
    private Integer giveIntegral;

    @ApiModelProperty("积分排名")
    @TableField("integral_rank")
    private Integer integralRank;


}
