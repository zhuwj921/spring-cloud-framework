package com.cloud.zhuwj.message.handle;


import com.cloud.zhuwj.common.reponse.Result;
import com.cloud.zhuwj.message.Message;
import com.cloud.zhuwj.message.execption.MessageException;

/**
 * @author zhuwj
 * @Description: 消息处理统一接口  暂不处理返回结果
 * @date 2018/3/26 16:20
 */
public interface MessageHandler {

    /**
     * 是否能够处理请求
     * @param message
     * @return
     * @throws MessageException
     */
     boolean canHandle(Message message) throws MessageException;

    /**
     * 处理结果返回
     * @param message
     * @return
     * @throws MessageException
     */
     Result<String> doHandle(Message message) throws MessageException;

}
