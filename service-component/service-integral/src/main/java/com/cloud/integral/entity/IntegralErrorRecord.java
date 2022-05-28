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
 * 积分错误信息表
 * </p>
 *
 * @author zhuwj
 * @since 2022-05-29
 */
@Getter
@Setter
@TableName("integral_error_record")
@ApiModel(value = "IntegralErrorRecord对象", description = "积分错误信息表")
public class IntegralErrorRecord extends BaseEntity {

    @ApiModelProperty("积分对象")
    @TableField("integral_object")
    private String integralObject;

    @ApiModelProperty("错误消息")
    @TableField("error_content")
    private String errorContent;

    @ApiModelProperty("积分来源")
    @TableField("integral_source")
    private String integralSource;

    @ApiModelProperty("是否补推（默认否）")
    @TableField("whether_fill_push")
    private Boolean whetherFillPush;


}
