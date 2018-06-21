package com.cloud.zhuwj.common.event;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Component;

/**
 * @author zhuwj
 * @Description: 系统启动完成事件
 * @date 2018/5/23 16:59
 */
@Component
public class ApplicationReadyEventListener implements  ApplicationListener<ApplicationReadyEvent> {
    private static Logger logger = LoggerFactory.getLogger(ApplicationReadyEventListener.class);

    @Override
    public void onApplicationEvent(ApplicationReadyEvent event) {
        EventUtil.dispatcher(IStartupEvent.class);
    }
}
