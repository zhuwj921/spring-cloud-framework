package com.cloud.zhuwj.weixin.server.handler;

import com.foxinmy.weixin4j.handler.MessageHandlerAdapter;
import com.foxinmy.weixin4j.message.TextMessage;
import com.foxinmy.weixin4j.response.TextResponse;
import com.foxinmy.weixin4j.response.WeixinResponse;
import org.springframework.stereotype.Component;

/**
 * 文本消息处理
 *
 * @className TextMessageHandler
 * @author jinyu(foxinmy@gmail.com)
 * @date 2015年11月18日
 * @since JDK 1.6
 */
@Component
public class TextMessageHandler extends MessageHandlerAdapter<TextMessage> {
    @Override
    public WeixinResponse doHandle0(TextMessage message) {
        return new TextResponse("收到了文本消息");
    }
}
