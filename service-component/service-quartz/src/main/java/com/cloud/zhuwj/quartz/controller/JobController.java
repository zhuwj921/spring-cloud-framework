package com.cloud.zhuwj.quartz.controller;

import com.cloud.zhuwj.common.reponse.Result;
import com.cloud.zhuwj.quartz.domain.JobAndTrigger;
import com.cloud.zhuwj.quartz.scheduler.JobFactory.JobUtil;
import com.cloud.zhuwj.quartz.service.IJobAndTriggerService;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.quartz.SchedulerException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


@Api(description = "任务调度接口")
@RestController
@RequestMapping(value="/job")
public class JobController {
	private static final Logger logger = LoggerFactory.getLogger(JobController.class);
	@Autowired
	private IJobAndTriggerService jobAndTriggerService;

	@ApiOperation(value = "增加任务调度", notes = "增加任务调度接口")
	@PostMapping(value="/addjob")
	public Result<String> addjob(@RequestParam(value="jobClassName")String jobClassName,
						 @RequestParam(value="jobGroupName")String jobGroupName,
						 @RequestParam(value="cronExpression")String cronExpression){
		try {
			JobUtil.getInstance().addJob(jobClassName, jobGroupName, cronExpression);
		} catch (Exception e) {
			logger.error("创建任务调度失败",e);
			return Result.error("创建任务调度失败");
		}
		return Result.ok("任务调度增加成功");
	}
	


	@ApiOperation(value = "停止任务调度", notes = "停止任务调度")
	@PostMapping(value="/pausejob")
	public Result<String> pausejob(@RequestParam(value="jobClassName")String jobClassName, @RequestParam(value="jobGroupName")String jobGroupName)

	{
		try {
			JobUtil.getInstance().pauseJob(jobClassName, jobGroupName);
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
			JobUtil.getInstance().resumeJob(jobClassName, jobGroupName);
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
			JobUtil.getInstance().jobreschedule(jobClassName, jobGroupName, cronExpression);
		} catch (Exception e) {
			logger.error("更新定时任务失败",e);
			return Result.error("更新定时任务失败");
		}
		return Result.ok("更新定时任务成功");
	}
	


	@ApiOperation(value = "删除任务调度", notes = "删除任务调度")
	@PostMapping(value="/delete")
	public  Result<String> deletejob(@RequestParam(value="jobClassName")String jobClassName, @RequestParam(value="jobGroupName")String jobGroupName) throws Exception
	{			
		try {
			JobUtil.getInstance().jobdelete(jobClassName, jobGroupName);
		} catch (Exception e) {
			logger.error("删除定时任务失败",e);
			return Result.error("删除定时任务失败");
		}
		return Result.ok("删除定时任务失败");
	}

	@GetMapping(value="/findAll/{curr}/{pageSize}")
	public  Result<PageInfo<JobAndTrigger>> queryjob(@PathVariable(value="curr")int curr, @PathVariable(value="pageSize")int pageSize)
	{
		PageInfo<JobAndTrigger> jobAndTrigger = null;
		try {
			jobAndTrigger = jobAndTriggerService.getJobAndTriggerDetails(curr, pageSize);
		} catch (SchedulerException e) {
			logger.error("定时任务查询失败",e);
			return Result.error("定时任务查询失败");
		}
		return Result.ok(jobAndTrigger);
	}
	

	
	
}
