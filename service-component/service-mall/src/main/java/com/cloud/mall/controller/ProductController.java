package com.cloud.mall.controller;

import com.cloud.common.response.ResponseResult;
import com.cloud.mall.domain.Product;
import com.cloud.mall.service.ProductService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Description: 商品控制器
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-10-12
 */
@Slf4j
@RequestMapping("/product")
@RestController
@RequiredArgsConstructor
public class ProductController {

    private final ProductService productService;

    @PostMapping
    public ResponseResult<String> create(@RequestBody Product product) {
        productService.create(product);
        return ResponseResult.ok("创建成功");
    }
}
