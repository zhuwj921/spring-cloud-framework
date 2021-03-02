package com.cloud.workflow.handler;

import cn.hutool.core.collection.CollUtil;
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

    public ProcessInstance createHoliday() {
        ProcessInstance processInstance = holidayProcessHandler.createHoliday("zhuweijian123");
        Console.log("ProcessInstance: {}", processInstance.getId());
        return processInstance;
    }

    public void submitApply(String processInstanceId) {
        Task task = holidayProcessHandler.getTask(processInstanceId);
        HolidayApply holidayApply = new HolidayApply();
        holidayApply.setAssignee("zhuwj");
        holidayApply.setEndTime(LocalDateTime.now());
        holidayApply.setStartTime(LocalDateTime.now());
        holidayApply.setHours(0);
        holidayApply.setReason("过年回家");
        holidayApply.setTaskId(task.getId());
        holidayProcessHandler.submitApply(holidayApply);
    }

    public Task findTaskByAssignee() {
        List<Task> list = holidayProcessHandler.findTaskByAssignee("zhuwj");
        Console.log(list);
        return CollUtil.isEmpty(list) ? null : list.get(0);
    }

    @Test
    void applyHoliday(String taskId, int status) {
        ApplyHoliday applyHoliday = new ApplyHoliday();
        applyHoliday.setApplyStatus(status);
        applyHoliday.setReason("测试");
        applyHoliday.setTaskId(taskId);
        holidayProcessHandler.handleApply(applyHoliday);
    }

    @Test
    void holiday() {
        Console.log("创建请假流程");
        ProcessInstance processInstance = createHoliday();
        findTaskByAssignee();
        Console.log("提交请假申请");
        submitApply(processInstance.getId());
        Task task = findTaskByAssignee();
        Console.log("处理请假申请-不同意");
        applyHoliday(task.getId(), 2);
        findTaskByAssignee();
        Console.log("重新提交请假申请");
        Console.log("处理请假申请-同意");
        applyHoliday(task.getId(), 1);
        findTaskByAssignee();
    }
}