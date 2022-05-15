package com.cloud.common.base;

import com.baomidou.mybatisplus.annotation.*;
import com.cloud.common.auth.WebContext;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.datatype.jsr310.deser.LocalDateTimeDeserializer;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateTimeSerializer;
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
    @TableId(type = IdType.AUTO)
    private Long id;
    /**
     * 创建人
     */
    private Long createBy;
    /**
     * 创建时间
     */
    @JsonFormat(shape =JsonFormat.Shape.STRING,pattern ="yyyy-MM-dd HH:mm:ss",timezone ="GMT+8")
    @JsonDeserialize(using = LocalDateTimeDeserializer.class)
    @JsonSerialize(using = LocalDateTimeSerializer.class)
    private LocalDateTime createTime;
    /**
     * 修改人
     */
    private Long modifiedBy;
    /**
     * 修改时间
     */
    @JsonFormat(shape =JsonFormat.Shape.STRING,pattern ="yyyy-MM-dd HH:mm:ss",timezone ="GMT+8")
    @JsonDeserialize(using = LocalDateTimeDeserializer.class)
    @JsonSerialize(using = LocalDateTimeSerializer.class)
    private LocalDateTime modifiedTime;
    /**
     * 删除标志
     */
    @TableLogic
    @TableField("is_deleted")
    private Boolean deleted;
    /**
     * 版本号
     */
    @Version
    private Integer version;


    public void init() {
        init(WebContext.getUserId());
    }

    public void init(Long userId) {
        LocalDateTime now = LocalDateTime.now();
        this.createBy = userId;
        this.createTime = now;
        this.modifiedBy = userId;
        this.modifiedTime = now;
        this.deleted = Boolean.FALSE;
        this.version = 0;
    }

    public <T extends BaseEntity> void modify(T t) {
        LocalDateTime now = LocalDateTime.now();
        this.setId(t.getId());
        this.setModifiedBy(WebContext.getUserId());
        this.setModifiedTime(now);
        this.setVersion(t.getVersion() + 1);

    }

}
