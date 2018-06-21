package com.cloud.zhuwj.common.event.impl;

import com.cloud.zhuwj.common.event.ICloseEvent;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

/**
 * @author zhuwj
 * @Description: 事件关闭实现
 * @date 2018/3/21 19:16
 */
@Component
public class SystemCloseEventImpl implements ICloseEvent {
    private static Logger logger = LoggerFactory.getLogger(SystemCloseEventImpl.class);
    @Override
    public int order() {
        return 0;
    }

    @Override
    public void execute(Object... objects) {
        logger.info("服务关闭成功。。。。。。");

    }
}
