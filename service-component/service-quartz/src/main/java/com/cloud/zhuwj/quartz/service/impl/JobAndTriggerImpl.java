package com.cloud.zhuwj.quartz.service.impl;

import com.cloud.zhuwj.quartz.dao.IJobAndTriggerDAO;
import com.cloud.zhuwj.quartz.service.IJobAndTriggerService;
import com.cloud.zhuwj.quartz.domain.JobAndTrigger;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class JobAndTriggerImpl implements IJobAndTriggerService {

	@Autowired
	private IJobAndTriggerDAO jobAndTriggerDAO;
	
	public PageInfo<JobAndTrigger> getJobAndTriggerDetails(int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		List<JobAndTrigger> list = jobAndTriggerDAO.getJobAndTriggerDetails();
		PageInfo<JobAndTrigger> page = new PageInfo<JobAndTrigger>(list);
		return page;
	}

}