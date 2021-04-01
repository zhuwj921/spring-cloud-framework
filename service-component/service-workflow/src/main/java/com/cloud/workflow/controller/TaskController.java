package com.cloud.workflow.controller;

import com.cloud.common.auth.WebContext;
import com.cloud.common.response.ResponseResult;
import com.cloud.workflow.handler.HolidayProcessHandler;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.flowable.task.api.Task;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author: zhuwj
 * @date: 2021/4/1 23:21
 * @description: 任务控制器
 */

@Slf4j
@RequiredArgsConstructor
@RestController
public class TaskController {

    private final HolidayProcessHandler holidayProcessHandler;

    @PostMapping("page")
    public ResponseResult<List<Task>> page() {
        List<Task> tasks = holidayProcessHandler.findTaskByAssignee(WebContext.getUsername());
        return ResponseResult.ok(tasks);
    }

}
