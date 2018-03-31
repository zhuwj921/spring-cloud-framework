package com.cloud.zhuwj.message.sms;


import com.cloud.zhuwj.message.BaseMessage;

/**
 * @author zhuwj
 * @Description: 文本短信消息
 * @date 2018/3/26 17:31
 */
public class BaseSmsMessage extends BaseMessage {

    /**
     *  模板id
     */
    private String templateId;

    public String getTemplateId() {
        return templateId;
    }

    public void setTemplateId(String templateId) {
        this.templateId = templateId;
    }

    @Override
    public String toString() {
        return "BaseSmsMessage{" +
                "templateId='" + templateId + '\'' +
                "} " + super.toString();
    }
}
