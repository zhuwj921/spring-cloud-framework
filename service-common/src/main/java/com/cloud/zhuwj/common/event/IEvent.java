package com.cloud.zhuwj.common.event;

/**
 * @author zhuwj
 * @Description: 基础事件接口
 * @date 2018/3/21 18:30
 */
public interface IEvent {

    int order();

    void execute(Object... objects);
}
