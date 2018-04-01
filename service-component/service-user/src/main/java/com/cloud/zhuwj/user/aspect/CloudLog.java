package com.cloud.zhuwj.user.aspect;

import java.lang.annotation.*;

/**
 * @author zhuwj
 * @version V1.0
 * @Description: 日志注解
 * @date 2018/4/1.
 */
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface CloudLog {
    String description() default "" ;
}
