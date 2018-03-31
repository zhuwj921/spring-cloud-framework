package com.cloud.zhuwj.message.dispatcher;


import com.cloud.zhuwj.message.handle.MessageHandler;

/**
 * @author zhuwj
 * @Description: 消息处理执行器
 * @date 2018/3/26 20:05
 */
public class MessageHandlerExecutor {

    /**
     * 消息处理器
     */
    private final MessageHandler messageHandler;

    public MessageHandlerExecutor (MessageHandler messageHandler) {
        this.messageHandler = messageHandler;
    }

    public MessageHandler getMessageHandler() {
        return messageHandler;
    }
}
