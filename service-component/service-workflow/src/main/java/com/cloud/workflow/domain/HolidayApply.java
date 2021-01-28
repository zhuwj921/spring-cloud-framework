package com.cloud.workflow.domain;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * @author: zhuwj
 * @date: 2021/1/24 10:47
 * @description: 假期提交审批
 */
@ApiModel(value = "假期提交审批", description = "提交审批假期的信息")
@Data
public class HolidayApply implements Serializable {

    @ApiModelProperty("提交审批的处理人")
    private String assignee;
    @ApiModelProperty("请假开始时间")
    private LocalDateTime startTime;
    @ApiModelProperty("请假结束时间")
    private LocalDateTime endTime;
    @ApiModelProperty("请假理由")
    private String reason;
    @ApiModelProperty("请假时间（小时）")
    private Integer hours;
    @ApiModelProperty("任务id")
    private String taskId;
}
