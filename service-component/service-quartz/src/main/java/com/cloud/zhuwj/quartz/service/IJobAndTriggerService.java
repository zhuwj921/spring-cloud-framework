package com.cloud.zhuwj.quartz.service;


import com.cloud.zhuwj.quartz.domain.JobAndTrigger;
import com.github.pagehelper.PageInfo;
import org.quartz.SchedulerException;

public interface IJobAndTriggerService {
	 PageInfo<JobAndTrigger> getJobAndTriggerDetails(int pageNum, int pageSize) throws SchedulerException;
}
