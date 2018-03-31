package com.cloud.zhuwj.message;

import com.gdf.carbon.common.message.enums.AccountTypeEnum;
import org.apache.commons.lang3.StringUtils;

import java.io.Serializable;

/**
 * @author zhuwj
 * @Description: 消息key定义
 * @date 2018/3/26 16:27
 */
public class MessageKey implements Serializable{

    private String messageType;
    private String eventType;
    private AccountTypeEnum accountType;

    public MessageKey() {
    }

    /**
     *
     * @param messageType 消息类型
     * @param eventType 事件类型
     * @param accountType 账号类型
     */
    public MessageKey(String messageType, String eventType, AccountTypeEnum accountType) {
        this.messageType = messageType;
        this.eventType = eventType;
        this.accountType = accountType;
    }

    public String getMessageType() {
        return messageType;
    }

    public void setMessageType(String messageType) {
        this.messageType = messageType;
    }

    public String getEventType() {
        return eventType;
    }

    public void setEventType(String eventType) {
        this.eventType = eventType;
    }

    public AccountTypeEnum getAccountType() {
        return accountType;
    }

    public void setAccountType(AccountTypeEnum accountType) {
        this.accountType = accountType;
    }
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result
                + ((accountType == null) ? 0 : accountType.hashCode());
        result = prime * result
                + ((StringUtils.isBlank(eventType)) ? 0 : eventType.hashCode());
        result = prime
                * result
                + ((StringUtils.isBlank(messageType)) ? 0 : messageType
                .hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        MessageKey other = (MessageKey) obj;
        if (accountType != other.accountType)
            return false;
        if (eventType == null) {
            if (other.eventType != null)
                return false;
        } else if (!eventType.equalsIgnoreCase(other.eventType))
            return false;
        if (messageType == null) {
            if (other.messageType != null)
                return false;
        } else if (!messageType.equalsIgnoreCase(other.messageType))
            return false;
        return true;
    }


    @Override
    public String toString() {
        return "MessageKey{" +
                "messageType='" + messageType + '\'' +
                ", eventType='" + eventType + '\'' +
                ", accountType=" + accountType +
                '}';
    }
}
