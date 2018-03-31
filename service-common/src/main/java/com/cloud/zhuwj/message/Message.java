package com.cloud.zhuwj.message;

/**
 * @author zhuwj
 * @Description: 消息统一接口定义
 * @date 2018/3/26 16:27
 */
public interface Message {

    /**
     * 消息内容
     * @return
     */
    String[] getContent();

    /**
     * 接收消息的账号
     * @return
     */
    String[] getToUserName();

    /**
     * 创建消息的账号
     * @return
     */
    String getFromUserName();

}
