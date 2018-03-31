package com.cloud.zhuwj.quartz.scheduler;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

/**
 * @author zhuwj
 * @version V1.0
 * @Description: 基础任务调度job
 * @date 2018/3/24.
 */
public interface BaseSchedulerJop extends Job {
    void execute(JobExecutionContext context)
            throws JobExecutionException;
}
