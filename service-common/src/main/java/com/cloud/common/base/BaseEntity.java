package com.cloud.common.base;

import com.cloud.common.auth.WebContext;
import lombok.Data;

import javax.persistence.*;
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
@MappedSuperclass
public class BaseEntity implements Serializable {
    /**
     * 主键id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    /**
     * 创建人
     */
    @Column(name = "create_by", updatable = false, nullable = false)
    private Long createBy;
    /**
     * 创建时间
     */
    @Column(name = "create_time", updatable = false, nullable = false)
    private LocalDateTime createTime;
    /**
     * 修改人
     */
    @Column(name = "modified_by", nullable = false)
    private Long modifiedBy;
    /**
     * 修改时间
     */
    @Column(name = "modified_time", nullable = false)
    private LocalDateTime modifiedTime;
    /**
     * 删除标志
     */
    @Column(name = "is_deleted", updatable = false, nullable = false, columnDefinition = "bit default b'0'")
    private Boolean deleted;
    /**
     * 版本号
     */
    @Column(name = "version", nullable = false, columnDefinition = "int default 0")
    private Integer version;


    public void init() {
        LocalDateTime now = LocalDateTime.now();
        this.createBy = WebContext.getUserId();
        this.createTime = now;
        this.modifiedBy = WebContext.getUserId();
        this.modifiedTime = now;
        this.deleted = false;
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
