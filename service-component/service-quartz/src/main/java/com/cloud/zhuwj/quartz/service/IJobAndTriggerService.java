package com.cloud.zhuwj.quartz.service;


import com.cloud.zhuwj.quartz.domain.JobAndTrigger;
import com.github.pagehelper.PageInfo;

public interface IJobAndTriggerService {
	public PageInfo<JobAndTrigger> getJobAndTriggerDetails(int pageNum, int pageSize);
}
