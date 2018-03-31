package com.cloud.zhuwj.quartz.controller;

import com.cloud.zhuwj.common.reponse.Result;
import com.cloud.zhuwj.quartz.scheduler.BaseSchedulerJop;
import com.cloud.zhuwj.quartz.service.IJobAndTriggerService;
import com.cloud.zhuwj.quartz.domain.JobAndTrigger;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.quartz.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.*;


@Api(description = "任务调度接口")
@RestController
@RequestMapping(value="/job")
public class JobController {
	private static final Logger logger = LoggerFactory.getLogger(JobController.class);
	@Autowired
	private IJobAndTriggerService jobAndTriggerService;
	
	//加入Qulifier注解，通过名称注入bean
	@Autowired
    @Qualifier("scheduler")
	private Scheduler scheduler;

	@ApiOperation(value = "增加任务调度", notes = "增加任务调度接口")
	@PostMapping(value="/save")
	public Result<String> addjob(@RequestParam(value="jobClassName")String jobClassName,
						 @RequestParam(value="jobGroupName")String jobGroupName,
						 @RequestParam(value="cronExpression")String cronExpression){
		try {
			addJob(jobClassName, jobGroupName, cronExpression);
		} catch (Exception e) {
			logger.error("创建任务调度失败",e);
			return Result.error("创建任务调度失败");
		}
		return Result.ok("任务调度增加成功");
	}
	
	public void addJob(String jobClassName, String jobGroupName, String cronExpression) throws Exception {
        
        // 启动调度器  
		scheduler.start(); 
		
		//构建job信息
		JobDetail jobDetail = JobBuilder.newJob(getClass(jobClassName).getClass()).withIdentity(jobClassName, jobGroupName).build();
		
		//表达式调度构建器(即任务执行的时间)
        CronScheduleBuilder scheduleBuilder = CronScheduleBuilder.cronSchedule(cronExpression);

        //按新的cronExpression表达式构建一个新的trigger
        CronTrigger trigger = TriggerBuilder.newTrigger().withIdentity(jobClassName, jobGroupName)
            .withSchedule(scheduleBuilder).build();
		scheduler.scheduleJob(jobDetail, trigger);
	}

	@ApiOperation(value = "停止任务调度", notes = "停止任务调度")
	@PostMapping(value="/pause")
	public Result<String> pausejob(@RequestParam(value="jobClassName")String jobClassName, @RequestParam(value="jobGroupName")String jobGroupName)

	{
		try {
			scheduler.pauseJob(JobKey.jobKey(jobClassName, jobGroupName));
		} catch (Exception e) {
			logger.error("任务调度停止失败",e);
			return Result.error("任务调度停止失败");
		}
		return Result.ok("任务调度停止成功");
	}

	@ApiOperation(value = "恢复任务调度", notes = "恢复任务调度")
	@PostMapping(value="/resume")
	public  Result<String> resumejob(@RequestParam(value="jobClassName")String jobClassName, @RequestParam(value="jobGroupName")String jobGroupName) throws Exception
	{
		try {
			scheduler.resumeJob(JobKey.jobKey(jobClassName, jobGroupName));
		} catch (Exception e) {
			logger.error("任务调度恢复失败");
			return Result.error("任务调度恢复失败");
		}
		return Result.ok("任务调度恢复成功");
	}



	@ApiOperation(value = "更新任务调度", notes = "更新任务调度")
	@PostMapping(value="/reschedule")
	public Result<String> rescheduleJob(@RequestParam(value="jobClassName")String jobClassName,
			@RequestParam(value="jobGroupName")String jobGroupName,
			@RequestParam(value="cronExpression")String cronExpression) throws Exception
	{			
		try {
			jobreschedule(jobClassName, jobGroupName, cronExpression);
		} catch (Exception e) {
			logger.error("更新定时任务失败",e);
			return Result.error("更新定时任务失败");
		}
		return Result.ok("更新定时任务成功");
	}
	
	public void jobreschedule(String jobClassName, String jobGroupName, String cronExpression) throws Exception
	{				
			TriggerKey triggerKey = TriggerKey.triggerKey(jobClassName, jobGroupName);
			// 表达式调度构建器
			CronScheduleBuilder scheduleBuilder = CronScheduleBuilder.cronSchedule(cronExpression);

			CronTrigger trigger = (CronTrigger) scheduler.getTrigger(triggerKey);

			// 按新的cronExpression表达式重新构建trigger
			trigger = trigger.getTriggerBuilder().withIdentity(triggerKey).withSchedule(scheduleBuilder).build();

			// 按新的trigger重新设置job执行
			scheduler.rescheduleJob(triggerKey, trigger);

	}

	@ApiOperation(value = "删除任务调度", notes = "删除任务调度")
	@PostMapping(value="/delete")
	public  Result<String> deletejob(@RequestParam(value="jobClassName")String jobClassName, @RequestParam(value="jobGroupName")String jobGroupName) throws Exception
	{			
		try {
			jobdelete(jobClassName, jobGroupName);
		} catch (Exception e) {
			logger.error("删除定时任务失败",e);
			return Result.error("删除定时任务失败");
		}
		return Result.ok("删除定时任务失败");
	}
	
	public void jobdelete(String jobClassName, String jobGroupName) throws Exception
	{		
		scheduler.pauseTrigger(TriggerKey.triggerKey(jobClassName, jobGroupName));
		scheduler.unscheduleJob(TriggerKey.triggerKey(jobClassName, jobGroupName));
		scheduler.deleteJob(JobKey.jobKey(jobClassName, jobGroupName));
	}
	
	
	@GetMapping(value="/findAll")
	public  Result<PageInfo<JobAndTrigger>> findAll(@RequestParam(value="pageNum")Integer pageNum, @RequestParam(value="pageSize")Integer pageSize)
	{
		PageInfo<JobAndTrigger> jobAndTrigger = jobAndTriggerService.getJobAndTriggerDetails(pageNum, pageSize);
		return Result.ok(jobAndTrigger);
	}
	
	public static BaseSchedulerJop getClass(String classname) throws Exception
	{
		Class<?> class1 = Class.forName(classname);
		return (BaseSchedulerJop)class1.newInstance();
	}
	
	
}
