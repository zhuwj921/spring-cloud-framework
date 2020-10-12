package com.cloud.mall.domain;

import com.cloud.common.base.BaseEntity;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.math.BigDecimal;
import java.time.LocalDateTime;

/**
 * Description: 产品
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-10-12
 */

@Data
@Entity
@Table(name = "mall_product")
public class Product extends BaseEntity {

    /**
     * 产品名称
     */
    @Column(name = "product_name")
    private String productName;
    /**
     * 发布时间
     */
    @Column(name = "publish_time")
    private LocalDateTime publishTime;
    /**
     * 价格
     */
    @Column(name = "price")
    private BigDecimal price;
    /**
     * 数量
     */
    @Column(name = "sum_amount")
    private Integer sumAmount;
    /**
     * 剩余数量
     */
    @Column(name = "residue_amount")
    private Integer residueAmount;

}
