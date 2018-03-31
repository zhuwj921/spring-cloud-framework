package com.cloud.zhuwj.quartz.domain;



import com.cloud.zhuwj.common.base.BaseDO;

import java.math.BigInteger;

public class JobAndTrigger extends BaseDO {
	private String jobName;
	private String jobroup;
	private String jobClassName;
	private String jobGroupName;
	private String triggerName;
	private String triggerGroup;
	private BigInteger repeatInterval;
	private BigInteger timesTriggered;
	private String cronExpression;
	private String timeZoneId;

	private boolean running;
	public String getJobName() {
		return jobName;
	}

	public void setJobName(String jobName) {
		this.jobName = jobName;
	}

	public String getJobroup() {
		return jobroup;
	}

	public void setJobroup(String jobroup) {
		this.jobroup = jobroup;
	}

	public String getJobClassName() {
		return jobClassName;
	}

	public void setJobClassName(String jobClassName) {
		this.jobClassName = jobClassName;
	}

	public String getTriggerName() {
		return triggerName;
	}

	public void setTriggerName(String triggerName) {
		this.triggerName = triggerName;
	}

	public String getTriggerGroup() {
		return triggerGroup;
	}

	public void setTriggerGroup(String triggerGroup) {
		this.triggerGroup = triggerGroup;
	}

	public BigInteger getRepeatInterval() {
		return repeatInterval;
	}

	public void setRepeatInterval(BigInteger repeatInterval) {
		this.repeatInterval = repeatInterval;
	}

	public BigInteger getTimesTriggered() {
		return timesTriggered;
	}

	public void setTimesTriggered(BigInteger timesTriggered) {
		this.timesTriggered = timesTriggered;
	}

	public String getCronExpression() {
		return cronExpression;
	}

	public void setCronExpression(String cronExpression) {
		this.cronExpression = cronExpression;
	}

	public String getTimeZoneId() {
		return timeZoneId;
	}

	public void setTimeZoneId(String timeZoneId) {
		this.timeZoneId = timeZoneId;
	}

	public String getJobGroupName() {
		return jobGroupName;
	}

	public void setJobGroupName(String jobGroupName) {
		this.jobGroupName = jobGroupName;
	}

	public boolean getRunning() {
		return running;
	}

	public void setRunning(boolean running) {
		this.running = running;
	}
}
