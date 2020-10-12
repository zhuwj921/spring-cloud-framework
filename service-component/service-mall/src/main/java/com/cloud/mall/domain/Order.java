package com.cloud.mall.domain;

import com.cloud.common.base.BaseEntity;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.math.BigDecimal;

/**
 * Description: 订单
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-10-12
 */
@Data
@Entity
@Table(name = "mall_order")
public class Order extends BaseEntity {

    @Column(name = "order_no")
    private String orderNo;

    @Column(name = "product_id")
    private Long productId;

    @Column(name = "amount")
    private Integer amount;

    @Column(name = "pay_status")
    private Integer payStatus;

    @Column(name = "money")
    private BigDecimal money;


}
