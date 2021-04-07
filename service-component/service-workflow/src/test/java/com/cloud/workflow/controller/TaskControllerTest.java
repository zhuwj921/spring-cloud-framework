package com.cloud.workflow.controller;

import cn.hutool.core.lang.Console;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;

/**
 * @author: zhuwj
 * @date: 2021/4/6 23:40
 * @description:
 */
@RunWith(SpringRunner.class)
@SpringBootTest
class TaskControllerTest {

    @Resource
    TaskController taskController;

    @Test
    void page() {
        Console.log(taskController.page());
    }
}