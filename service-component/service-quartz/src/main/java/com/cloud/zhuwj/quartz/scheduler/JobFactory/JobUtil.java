package com.cloud.zhuwj.quartz.scheduler.JobFactory;

import com.cloud.zhuwj.quartz.scheduler.BaseSchedulerJop;
import org.quartz.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * @author zhuwj
 * @version V1.0
 * @Description:  job任务创建工具
 * @date 2018/3/31.
 */
@Component
public class JobUtil {
    private static final Logger logger = LoggerFactory.getLogger(JobUtil.class);

    private static JobUtil jobUtil;

    @Autowired
    private Scheduler scheduler;

    public JobUtil(){
        logger.info("init jobUtil");
        jobUtil = this;
    }

    public static JobUtil getInstance(){
        logger.info("retun  JobCreateUtil");
        return JobUtil.jobUtil;
    }

    /**
     * 创建job
     * @param jobClassName
     * @param jobGroupName
     * @param cronExpression
     * @throws Exception
     */
    public  void addJob(String jobClassName, String jobGroupName, String cronExpression) throws Exception {

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

    /**
     * 暂停job
     * @param jobClassName
     * @param jobGroupName
     * @throws SchedulerException
     */
    public void pauseJob(String jobClassName,String jobGroupName) throws SchedulerException {
        scheduler.pauseJob(JobKey.jobKey(jobClassName, jobGroupName));
    }

    /**
     * 恢复job
     * @param jobClassName
     * @param jobGroupName
     * @throws SchedulerException
     */
    public void resumeJob(String jobClassName,String jobGroupName) throws SchedulerException {

        scheduler.resumeJob(JobKey.jobKey(jobClassName, jobGroupName));
    }


    /**
     * job 更新
     * @param jobClassName
     * @param jobGroupName
     * @param cronExpression
     * @throws Exception
     */
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

    /**
     * job 删除
     * @param jobClassName
     * @param jobGroupName
     * @throws Exception
     */
    public void jobdelete(String jobClassName, String jobGroupName) throws Exception
    {
        scheduler.pauseTrigger(TriggerKey.triggerKey(jobClassName, jobGroupName));
        scheduler.unscheduleJob(TriggerKey.triggerKey(jobClassName, jobGroupName));
        scheduler.deleteJob(JobKey.jobKey(jobClassName, jobGroupName));
    }


    /**
     *  根据包名得到类创建实例
     * @param classname
     * @return
     * @throws Exception
     */
    private  static BaseSchedulerJop getClass(String classname) throws Exception
    {
        Class<?> class1 = Class.forName(classname);
        return (BaseSchedulerJop)class1.newInstance();
    }
}
