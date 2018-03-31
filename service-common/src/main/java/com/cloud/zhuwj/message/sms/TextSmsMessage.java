package com.cloud.zhuwj.message.sms;

/**
 * @author zhuwj
 * @Description: 文本短信消息
 * @date 2018/3/26 17:31
 */
public class TextSmsMessage extends BaseSmsMessage {

    public   TextSmsMessage() {
    }

    /**
     * 文本消息创建
     * @param templateId 模板id
     * @param contents 消息内容
     * @param phones 电话号码
     * @return
     */
    public  TextSmsMessage(String templateId,String[] contents,String[] phones) {
        super.setTemplateId(templateId);
        super.setContent(contents);
        super.setToUserName(phones);
    }
    /**
     * 文本消息创建
     * @param templateId 模板id
     * @param contents 消息内容
     * @return
     */
    public  TextSmsMessage(String templateId,String[] contents) {
        super.setTemplateId(templateId);
        super.setContent(contents);
    }

    @Override
    public String toString() {
        return "TextSmsMessage{} " + super.toString();
    }


}
