package com.cloud.common.event;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.context.event.ApplicationFailedEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Component;

/**
 * Description: 启动失败事件
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-10-12
 */
@Slf4j
@Component
public class ApplicationFailedEventListener implements ApplicationListener<ApplicationFailedEvent> {
    @Override
    public void onApplicationEvent(ApplicationFailedEvent event) {
        log.info("system run failed. ");

    }
}
