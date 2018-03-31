package com.cloud.zhuwj.quartz.dao;


import com.cloud.zhuwj.common.base.BaseDAO;
import com.cloud.zhuwj.quartz.domain.JobAndTrigger;

import java.util.List;

public interface IJobAndTriggerDAO extends BaseDAO<JobAndTrigger> {
	public List<JobAndTrigger> getJobAndTriggerDetails();
}
