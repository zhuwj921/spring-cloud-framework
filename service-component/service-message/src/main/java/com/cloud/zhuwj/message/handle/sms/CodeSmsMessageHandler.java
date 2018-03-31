package com.cloud.zhuwj.message.handle.sms;

import com.cloud.zhuwj.common.reponse.Result;
import com.cloud.zhuwj.message.execption.MessageException;
import com.cloud.zhuwj.message.sms.CodeSmsMessage;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

/**
 * @author zhuwj
 * @Description: 短信验证码消息处理器
 * @date 2018/3/26 18:15
 */
@Component
public class CodeSmsMessageHandler extends SmsMessageHandleAdapter<CodeSmsMessage> {

    private static final Logger logger = LoggerFactory.getLogger(CodeSmsMessageHandler.class);
    @Override
    public Result<String> doHandle0(CodeSmsMessage message) throws MessageException {
        logger.info("短信验证码消息开始处理"+message.toString());
        return null;
    }
}
