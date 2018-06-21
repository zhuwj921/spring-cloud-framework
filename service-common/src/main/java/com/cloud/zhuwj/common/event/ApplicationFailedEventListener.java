package com.cloud.zhuwj.common.event;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.context.event.ApplicationFailedEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Component;

/**
 * @author zhuwj
 * @Description: 系统启动失败事件
 * @date 2018/5/23 17:06
 */
@Component
public class ApplicationFailedEventListener implements ApplicationListener<ApplicationFailedEvent> {
    private static Logger logger = LoggerFactory.getLogger(ApplicationFailedEventListener.class);
    @Override
    public void onApplicationEvent(ApplicationFailedEvent event) {
        logger.info("系统启动失败......");
    }
}
