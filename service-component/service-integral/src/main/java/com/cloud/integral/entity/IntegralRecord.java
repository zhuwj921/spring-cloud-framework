package com.cloud.integral.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.cloud.common.base.BaseEntity;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.datatype.jsr310.deser.LocalDateTimeDeserializer;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateTimeSerializer;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

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
@TableName("integral_record")
@ApiModel(value = "IntegralRecord对象", description = "积分记录")
public class IntegralRecord extends BaseEntity {

    @ApiModelProperty("积分编号")
    @TableField("integral_no")
    private String integralNo;

    @ApiModelProperty("积分来源")
    @TableField("source")
    private Integer source;

    @ApiModelProperty("积分类型：增加，消费")
    @TableField("integral_type")
    private Integer integralType;

    @ApiModelProperty("积分数量")
    @TableField("num")
    private Integer num;

    @ApiModelProperty("积分失效时间")
    @TableField("lose_efficacy_time")
    @JsonFormat(shape =JsonFormat.Shape.STRING,pattern ="yyyy-MM-dd HH:mm:ss",timezone ="GMT+8")
    @JsonDeserialize(using = LocalDateTimeDeserializer.class)
    @JsonSerialize(using = LocalDateTimeSerializer.class)
    private LocalDateTime loseEfficacyTime;


}
