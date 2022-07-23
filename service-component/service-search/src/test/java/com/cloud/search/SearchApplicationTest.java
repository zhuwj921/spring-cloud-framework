package com.cloud.search;

import cn.hutool.core.lang.Console;
import com.cloud.search.model.Product;
import com.cloud.search.service.ProductService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.io.IOException;


@RunWith(SpringRunner.class)
@SpringBootTest
public class SearchApplicationTest {

    @Autowired
    private ProductService productService;

    @Test
    public void insertData() throws IOException {
        Product product = new Product();
        product.setId("1");
        product.setProductName("苹果手机");
        product.setProductType("phone");
        productService.save(product);
    }

    @Test
    public void findById(){
        Console.log(productService.findById("1"));
    }
}