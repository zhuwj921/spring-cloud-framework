package com.cloud.auth.facade.kafka.producer;

import cn.hutool.json.JSONUtil;
import com.cloud.common.constant.KafkaConstant;
import com.cloud.common.model.dto.ShortMessageDTO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.kafka.support.SendResult;
import org.springframework.stereotype.Component;
import org.springframework.util.concurrent.ListenableFuture;

/**
 * @author zhuwj
 * @date 2022/05/23 22:42
 * @description: 短信生产者
 **/
@Slf4j
@Component
@RequiredArgsConstructor
public class ShortMessageProducer {


    private final KafkaTemplate<String, Object> kafkaTemplate;

    /**
     * 发送积分消息
     */
    public void sendMessage(ShortMessageDTO shortMessage) {
        ListenableFuture<SendResult<String, Object>> future = kafkaTemplate.send(KafkaConstant.SHORT_MESSAGE_TOPIC, shortMessage);
        future.addCallback(
                result -> {
                    log.info("sendMessage Success topic:{} partition:{}的消息", result.getRecordMetadata().topic(), result.getRecordMetadata().partition());
                },
                ex -> {
                    log.error("sendMessage error, {}", ex.getMessage());
                    //异步处理失败数据
                    log.error("shortMessage data :{}", JSONUtil.toJsonStr(shortMessage));

                });
    }

}
