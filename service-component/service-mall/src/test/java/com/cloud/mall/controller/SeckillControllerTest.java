package com.cloud.mall.controller;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.lang.Console;
import com.cloud.common.response.ResponseResult;
import com.cloud.mall.domain.Product;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@RunWith(SpringRunner.class)
@SpringBootTest
class SeckillControllerTest {

    @Autowired
    private SeckillController seckillController;

    @Test
    void createOrder() throws InterruptedException {
        Console.log("抢购开始-{}", DateUtil.now());
        ExecutorService executorService = Executors.newFixedThreadPool(100);
        CountDownLatch countDownLatch = new CountDownLatch(1000);
        for (int i = 0; i < 1000; i++) {
            int finalI = i;
            executorService.submit(() -> {
                Console.log("第{}位用户开始抢购", finalI);
                Product product = new Product();
                product.setId(1l);
                ResponseResult<String> responseResult = null;
                try {
                    responseResult = seckillController.createOrder(product);
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    Console.log("订单抢购结果-{}", responseResult.getMessage());
                    countDownLatch.countDown();
                }

            });
        }
        countDownLatch.await();
        Console.log("抢购结束-{}", DateUtil.now());
    }
}
