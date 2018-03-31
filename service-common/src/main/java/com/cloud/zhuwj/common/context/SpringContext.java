package com.cloud.zhuwj.common.context;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

/**
 * @author zhuwj
 * @Description: spring上下文
 * @date 2018/3/21 18:39
 */
@Component
public class SpringContext implements ApplicationContextAware{

    private static ApplicationContext Context;
    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        SpringContext.Context = applicationContext;
    }

    public static ApplicationContext getContext() {
        return SpringContext.Context;
    }

    //通过name获取 Bean.
    public static Object getBean(String name){
        return getContext().getBean(name);
    }

    //通过class获取Bean.
    public static <T> T getBean(Class<T> clazz){
        return getContext().getBean(clazz);
    }

    //通过name,以及Clazz返回指定的Bean
    public static <T> T getBean(String name,Class<T> clazz){
        return getContext().getBean(name, clazz);
    }
}
