package com.cloud.workflow.domain;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

/**
 * @author: zhuwj
 * @date: 2021/1/24 10:47
 * @description: 假期提交审批
 */
@ApiModel(value = "处理假期审批", description = "处理假期审批")
@Data
public class ApplyHoliday implements Serializable {

    @ApiModelProperty("提交审批的处理人")
    private Integer applyStatus;

    @ApiModelProperty("审批理由")
    private String reason;

    @ApiModelProperty("任务id")
    private String taskId;

}
