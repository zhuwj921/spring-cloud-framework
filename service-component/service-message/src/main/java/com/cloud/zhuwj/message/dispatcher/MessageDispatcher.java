package com.cloud.zhuwj.message.dispatcher;


import com.cloud.zhuwj.common.context.SpringContext;
import com.cloud.zhuwj.message.Message;
import com.cloud.zhuwj.message.execption.MessageException;
import com.cloud.zhuwj.message.handle.MessageHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/**
 * @author zhuwj
 * @Description: 消息分发器 将消息分发到各个消息处理器
 * @date 2018/3/26 18:10
 */
@Component
public class MessageDispatcher {

    private static final Logger logger = LoggerFactory.getLogger(MessageDispatcher.class);

    private static List<MessageHandler> handlerList;

    public void doDispatch(Message message) throws MessageException {
        MessageHandlerExecutor handlerExecutor = getHandlerExecutor(message);
        if (handlerExecutor == null
                || handlerExecutor.getMessageHandler() == null) {
            logger.info("no handlerExecutor {} .............");
            return;
        }

        handlerExecutor.getMessageHandler().doHandle(message);

    }

    protected MessageHandlerExecutor getHandlerExecutor(Message message){
         getHandlerList();
         List<MessageHandler> matchedMessageHandlers = new ArrayList<MessageHandler>();
         for(MessageHandler messageHandler : handlerList){
             if(messageHandler.canHandle(message)){
                 logger.info("matched handler ",messageHandler);
                 matchedMessageHandlers.add(messageHandler);
             }
         }
         if (matchedMessageHandlers.isEmpty()) {
             return null;
         }
        logger.debug("matchedMessageHandlers size :"+matchedMessageHandlers.size());
        return new MessageHandlerExecutor(matchedMessageHandlers.get(0));
     }


     protected void  getHandlerList(){
        if(handlerList==null||handlerList.isEmpty()){
            handlerList = new ArrayList<MessageHandler>();
            Map<String, MessageHandler> eventBeanMap = SpringContext.getContext()
                    .getBeansOfType(MessageHandler.class);
            Collection<MessageHandler> eventCollection = eventBeanMap.values();
            handlerList.addAll(eventCollection);
        }
     }
}
