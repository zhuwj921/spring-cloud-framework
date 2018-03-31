package com.cloud.zhuwj.quartz.service.impl;

import com.cloud.zhuwj.quartz.dao.IJobAndTriggerDAO;
import com.cloud.zhuwj.quartz.service.IJobAndTriggerService;
import com.cloud.zhuwj.quartz.domain.JobAndTrigger;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.Trigger;
import org.quartz.TriggerKey;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Iterator;
import java.util.List;


@Service
public class JobAndTriggerImpl implements IJobAndTriggerService {

	@Autowired
	private IJobAndTriggerDAO jobAndTriggerDAO;

	@Autowired
	private Scheduler scheduler;


	public PageInfo<JobAndTrigger> getJobAndTriggerDetails(int pageNum, int pageSize) throws SchedulerException {
		PageHelper.startPage(pageNum, pageSize);
		List<JobAndTrigger> list = jobAndTriggerDAO.getJobAndTriggerDetails();
		Iterator<JobAndTrigger> listIt = list.iterator();
		while (listIt.hasNext()) {
			JobAndTrigger jobAndTrigger = listIt.next();
			Trigger.TriggerState triggerState = scheduler.getTriggerState(new TriggerKey(jobAndTrigger.getTriggerName(), jobAndTrigger.getTriggerGroup()));
			if(triggerState == Trigger.TriggerState.NORMAL){
				jobAndTrigger.setRunning(true);
			}
		}
		PageInfo<JobAndTrigger> page = new PageInfo<JobAndTrigger>(list);
		return page;
	}

}