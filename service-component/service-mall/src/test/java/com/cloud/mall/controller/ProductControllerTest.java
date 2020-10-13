package com.cloud.mall.controller;

import com.cloud.mall.domain.Product;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@RunWith(SpringRunner.class)
@SpringBootTest
class ProductControllerTest {

    @Autowired
    private ProductController productController;

    @Test
    void create() {
        Product product = new Product();
        product.setId(1l);
        product.setCreateBy(1l);
        product.setCreateTime(LocalDateTime.now());
        product.setModifiedBy(1l);
        product.setModifiedTime(LocalDateTime.now());
        product.setDeleted(false);
        product.setVersion(0);
        product.setProductName("AMD3700x");
        product.setSumAmount(100);
        product.setResidueAmount(100);
        product.setPrice(new BigDecimal("100"));
        product.setPublishTime(LocalDateTime.now());
        productController.create(product);
    }
}
