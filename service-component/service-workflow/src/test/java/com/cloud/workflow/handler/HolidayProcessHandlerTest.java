package com.cloud.workflow.handler;

import cn.hutool.core.lang.Console;
import com.cloud.workflow.domain.ApplyHoliday;
import com.cloud.workflow.domain.HolidayApply;
import org.flowable.engine.runtime.ProcessInstance;
import org.flowable.task.api.Task;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.time.LocalDateTime;
import java.util.List;

/**
 * @author: zhuwj
 * @date: 2021/1/28 22:56
 * @description:
 */
@RunWith(SpringRunner.class)
@SpringBootTest
class HolidayProcessHandlerTest {


    @Resource
    private HolidayProcessHandler holidayProcessHandler;

    @Test
    void createHoliday() {
        ProcessInstance processInstance = holidayProcessHandler.createHoliday("zhuweijian123");
        Console.log("ProcessInstance: {}", processInstance.getId());
    }

    @Test
    void submitApply() {
        Task task = holidayProcessHandler.getTask("9925a7fc-617d-11eb-9341-2cf05d3d3045");
        HolidayApply holidayApply = new HolidayApply();
        holidayApply.setAssignee("zhuwj");
        holidayApply.setEndTime(LocalDateTime.now());
        holidayApply.setStartTime(LocalDateTime.now());
        holidayApply.setHours(0);
        holidayApply.setReason("过年回家");
        holidayApply.setTaskId(task.getId());
        holidayProcessHandler.submitApply(holidayApply);
    }

    @Test
    void findTaskByAssignee() {

        List<Task> list = holidayProcessHandler.findTaskByAssignee("zhuwj");
        Console.log(list);
    }

    @Test
    void applyHoliday() {
        List<Task> list = holidayProcessHandler.findTaskByAssignee("zhuwj");
        ApplyHoliday applyHoliday = new ApplyHoliday();
        applyHoliday.setApplyStatus(1);
        applyHoliday.setReason("测试");
        applyHoliday.setTaskId(list.get(0).getId());
        holidayProcessHandler.handleApply(applyHoliday);
    }
}