package com.cloud.workflow.handler;

import cn.hutool.json.JSONUtil;
import com.cloud.workflow.domain.ApplyHoliday;
import com.cloud.workflow.domain.HolidayApply;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.flowable.engine.RuntimeService;
import org.flowable.engine.TaskService;
import org.flowable.engine.runtime.ProcessInstance;
import org.flowable.task.api.Task;
import org.flowable.task.api.TaskQuery;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author: zhuwj
 * @date: 2021/1/25 22:40
 * @description:
 */
@RequiredArgsConstructor
@Transactional(rollbackFor = RuntimeException.class)
@Component
@Slf4j
public class HolidayProcessHandler {

    private final RuntimeService runtimeService;

    private final TaskService taskService;

    public ProcessInstance createHoliday(String userId) {
        Map<String, Object> params = new HashMap<>(4);
        params.put("userId", userId);
        ProcessInstance processInstance = runtimeService.startProcessInstanceByKey("holidayProcess", params);
        return processInstance;
    }

    public Task getTask(String processInstanceId) {
        Task task = taskService.createTaskQuery().processInstanceId(processInstanceId).singleResult();
        return task;
    }

    public void submitApply(HolidayApply holidayApply) {
        log.info("---------------- holiday submitApply start----------------");
        Map<String, Object> params = new HashMap<>(4);
        params.put("holidayApply", holidayApply);
        Task task = taskService.createTaskQuery().taskId(holidayApply.getTaskId()).singleResult();
        taskService.complete(task.getId(), params);
        log.info("---------------- holiday submitApply end----------------");
    }

    public void handleApply(ApplyHoliday applyHoliday) {
        log.info("---------------- holiday handleApply start----------------");
        Task task = taskService.createTaskQuery().taskId(applyHoliday.getTaskId()).singleResult();
        Map<String, Object> params = new HashMap<>(4);
        params.put("applyHoliday", JSONUtil.toJsonStr(applyHoliday));
        taskService.complete(task.getId(), params);
        log.info("---------------- holiday handleApply end----------------");
    }

    public List<Task> findTaskByAssignee(String assignee) {
        TaskQuery taskQuery = taskService.createTaskQuery().taskAssignee(assignee);
        return taskQuery.list();
    }
}
