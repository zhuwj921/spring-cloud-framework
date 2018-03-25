package com.cloud.zhuwj.user.scheduler;

import com.cloud.zhuwj.common.utils.DateUtil;
import com.cloud.zhuwj.user.controller.UserController;
import com.cloud.zhuwj.user.dao.IMenuDAO;
import com.cloud.zhuwj.user.domain.MenuDO;
import com.cloud.zhuwj.user.service.IMenuService;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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
    @Autowired
    private IMenuService menuService;
    @Override
    public void execute(JobExecutionContext context) throws JobExecutionException {
        logger.error(DateUtil.getDateTime());
        System.out.print(menuService.findTreeList(new MenuDO()));
    }
}
