package com.cloud.zhuwj.message.handle.sms;


import com.cloud.zhuwj.common.reponse.Result;
import com.cloud.zhuwj.message.util.MessageUtil;
import com.cloud.zhuwj.message.execption.MessageException;
import com.cloud.zhuwj.message.sms.TextSmsMessage;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;


/**
 * @author zhuwj
 * @Description: 短信文本消息处理器
 * @date 2018/3/26 18:15
 */
@Component
public class TextSmsMessageHandler extends SmsMessageHandleAdapter<TextSmsMessage> {

    private static final Logger logger = LoggerFactory.getLogger(TextSmsMessageHandler.class);


    @Override
    public Result<String> doHandle0(TextSmsMessage message) throws MessageException {
        logger.info("短信文本消息开始处理" + message.toString());
        String templateId = message.getTemplateId();
        if (StringUtils.isEmpty(templateId)) {
            logger.warn("TextSmsMessageHandler TextSmsMessage templateId is null");
            return Result.error("TextSmsMessageHandler TextSmsMessage templateId is null");
        }
        String[] phones = message.getToUserName();
        //有手机号码  不查询模板设置的手机号码
        if (phones != null && phones.length > 0) {
            Result<String> result = MessageUtil.sendMessage(message.getTemplateId(), message.getContent(), phones);
            return result;
        }
        return Result.error();
    }
}
