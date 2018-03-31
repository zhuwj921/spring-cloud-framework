package com.cloud.zhuwj.message;

import java.io.Serializable;
import java.util.Arrays;

/**
 * @author zhuwj
 * @Description: 基础消息
 * @date 2018/3/26 17:08
 */
public class BaseMessage implements Message,Serializable{

    /**
     * 消息内容
     */
    private String[] content;
    /**
     *  接收消息的账号
     */
    private String[] toUserName;
    /**
     * 创建消息的账号
     */
    private String fromUserName;

    @Override
    public String[] getContent() {
        return content;
    }

    public void setContent(String[] content) {
        this.content = content;
    }

    @Override
    public String[] getToUserName() {
        return toUserName;
    }

    public void setToUserName(String[] toUserName) {
        this.toUserName = toUserName;
    }

    @Override
    public String getFromUserName() {
        return fromUserName;
    }

    public void setFromUserName(String fromUserName) {
        this.fromUserName = fromUserName;
    }

    @Override
    public String toString() {
        return "BaseMessage{" +
                "content=" + Arrays.toString(content) +
                ", toUserName=" + Arrays.toString(toUserName) +
                ", fromUserName='" + fromUserName + '\'' +
                '}';
    }
}
