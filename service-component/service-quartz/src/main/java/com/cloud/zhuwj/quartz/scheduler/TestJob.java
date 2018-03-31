package com.cloud.zhuwj.quartz.scheduler;

import com.cloud.zhuwj.common.utils.DateUtil;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

/**
 * @author zhuwj
 * @version V1.0
 * @Description: 测试job
 * @date 2018/3/24.
 */
@Component
public class TestJob implements BaseSchedulerJop{
    private static final Logger logger = LoggerFactory.getLogger(TestJob.class);
    @Override
    public void execute(JobExecutionContext context) throws JobExecutionException {
        logger.error(DateUtil.getDateTime());
    }
}
