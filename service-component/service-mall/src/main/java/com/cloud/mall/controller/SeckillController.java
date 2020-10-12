package com.cloud.mall.controller;

import cn.hutool.core.date.DateUtil;
import com.cloud.common.response.ResponseResult;
import com.cloud.mall.domain.Order;
import com.cloud.mall.domain.Product;
import com.cloud.mall.enums.PayStatusEnum;
import com.cloud.mall.service.OrderService;
import com.cloud.mall.service.ProductService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Description: 秒杀控制器
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-10-12
 */
@Slf4j
@RequestMapping("/seckill")
@RestController
@RequiredArgsConstructor
public class SeckillController {

    private final ProductService productService;

    private final OrderService orderService;

    /**
     * 秒杀-抢购操作
     * 判断是否存在剩余库存
     * 存在则扣除库存
     * 创建付款记录
     * 进行付款操作
     *
     * @param product
     * @return
     */
    @Transactional(rollbackFor = Exception.class)
    @PostMapping("createOrder")
    public ResponseResult<String> createOrder(@RequestBody Product product) {
        //参数判断

        //获取库存信息
        Product queryResult = productService.findById(product.getId());
        Integer residueAmount = queryResult.getResidueAmount();
        if (residueAmount < 0) {
            return ResponseResult.error("商品已被抢购完毕!");

        }
        //库存数量大于0
        residueAmount = residueAmount - 1;
        //修改库存
        Product updateData = new Product();
        updateData.setId(product.getId());
        updateData.setResidueAmount(residueAmount);
        productService.update(updateData);
        //创建代付款订单
        Order order = new Order();
        order.init();
        order.setOrderNo(DateUtil.now() + System.currentTimeMillis());
        order.setProductId(product.getId());
        order.setAmount(1);
        order.setMoney(queryResult.getPrice());
        order.setPayStatus(PayStatusEnum.WAIT_PAY.getCode());
        orderService.create(order);
        return ResponseResult.ok("求购成功");
    }

}
