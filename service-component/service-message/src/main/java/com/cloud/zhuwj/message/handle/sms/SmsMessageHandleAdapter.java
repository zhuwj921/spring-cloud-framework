package com.cloud.zhuwj.message.handle.sms;


import com.cloud.zhuwj.common.reponse.Result;
import com.cloud.zhuwj.common.utils.ClassUtil;
import com.cloud.zhuwj.message.Message;
import com.cloud.zhuwj.message.execption.MessageException;
import com.cloud.zhuwj.message.handle.MessageHandler;
import com.cloud.zhuwj.message.sms.BaseSmsMessage;

/**
 * @author zhuwj
 * @Description: 短信消息处理适配器
 * @date 2018/3/26 17:49
 */
public abstract class SmsMessageHandleAdapter<M extends BaseSmsMessage> implements MessageHandler {


    @Override
    public boolean canHandle(Message message) throws MessageException {
        return message!=null&&message.getClass() == ClassUtil.getGenericType(getClass())
                &&canHandle0((M) message);
    }

    public boolean canHandle0( M message)
            throws MessageException {
        return true;
    }
    @Override
    public Result<String> doHandle(Message message) throws MessageException {
        return doHandle0((M) message);
    }

    public abstract Result<String> doHandle0(M message) throws MessageException ;

}
