package com.cloud.workflow.handler;

import com.cloud.workflow.domain.HolidayApply;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.flowable.engine.delegate.TaskListener;
import org.flowable.task.service.delegate.DelegateTask;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author: zhuwj
 * @date: 2021/1/23 21:24
 * @description: 接收人处理器
 */
@RequiredArgsConstructor
@Transactional(rollbackFor = RuntimeException.class)
@Component
@Slf4j
public class ApplyHolidayAssignmentHandler implements TaskListener {


    @Override
    public void notify(DelegateTask delegateTask) {
        HolidayApply holidayApply = delegateTask.getVariable("holidayApply", HolidayApply.class);
        delegateTask.setAssignee(holidayApply.getAssignee());
        log.info(holidayApply.toString());
    }
}
