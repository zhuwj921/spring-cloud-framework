package com.cloud.auth.facade.kafka.producer;

import com.cloud.common.constant.KafkaConstant;
import com.cloud.common.model.dto.IntegralDTO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.kafka.support.SendResult;
import org.springframework.stereotype.Component;
import org.springframework.util.concurrent.ListenableFuture;

/**
 * @author zhuwj
 * @date 2022/05/23 22:42
 * @description: 积分生产者
 **/
@Slf4j
@Component
@RequiredArgsConstructor
public class IntegralProducer {


    private final KafkaTemplate<String, Object> kafkaTemplate;

    /**
     * 发送积分消息
     */
    public void sendMessage(IntegralDTO integral) {
        ListenableFuture<SendResult<String, Object>> future = kafkaTemplate.send(KafkaConstant.INTEGRAL_TOPIC, integral);
        future.addCallback(
                result -> {
                    log.info("生产者成功发送消息到topic:{} partition:{}的消息", result.getRecordMetadata().topic(), result.getRecordMetadata().partition());
                },
                ex -> {
                    log.error("生产者发送消失败，原因：{}", ex.getMessage());
                });
    }

}
