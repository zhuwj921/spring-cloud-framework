package com.cloud.zhuwj.user.dao;


import com.cloud.zhuwj.common.base.BaseDAO;
import com.cloud.zhuwj.user.domain.JobAndTrigger;

import java.util.List;

public interface IJobAndTriggerDAO extends BaseDAO<JobAndTrigger> {
	public List<JobAndTrigger> getJobAndTriggerDetails();
}
