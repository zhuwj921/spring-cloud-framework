package com.cloud.zhuwj.common.event;


import com.cloud.zhuwj.common.context.SpringContext;
import com.cloud.zhuwj.common.enums.ErrorCodeEnum;
import com.cloud.zhuwj.common.exception.BusinessException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.CollectionUtils;

import java.util.*;

/**
 * @author zhuwj
 * @Description: 事件工具
 * @date 2018/3/21 18:33
 */
public final class EventUtil {
    private static Logger logger = LoggerFactory.getLogger(EventUtil.class);

    public static <Event extends IEvent> void dispatcher(
            Class<Event> eventClass, Object... objects) {
        logger.info("dispatch event for " + eventClass);

        try {
            Map<String, Event> eventBeanMap = SpringContext.getContext()
                    .getBeansOfType(eventClass);
            if (!CollectionUtils.isEmpty(eventBeanMap)) {
                Collection<Event> eventCollection = eventBeanMap.values();
                // 对事件实现列表进行排序处理
                List<Event> events = new ArrayList<Event>();
                events.addAll(eventCollection);
                Collections.sort(events, new Comparator<Event>() {

                    @Override
                    public int compare(Event o1, Event o2) {
                        return o1.order() - o2.order();
                    }
                });
                for (Event event : events) {

                    logger.debug("current dispatcher event:" + event);

                    event.execute(objects);
                }
            }
        } catch (Exception e) {
            logger.warn("can't find the event impl for " + eventClass);
            logger.error("publish event fail.", e);
            throw new BusinessException(ErrorCodeEnum.BUSINESS_FAIL.getCode(),"publish event fail.", e);
        }

        logger.info("dispatch event end.");
    }

}
