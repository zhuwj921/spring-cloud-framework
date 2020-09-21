package com.cloud.common.base;

import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * Description: 基础实体
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-09-21
 */

@Data
public class BaseEntity implements Serializable {
    /**
     * 主键id
     */
    private String id;

    private String createBy;

    private LocalDateTime createTime;

    private String updateBy;

    private LocalDateTime updateTime;

    private Boolean deleted;

    private Integer version;

}
