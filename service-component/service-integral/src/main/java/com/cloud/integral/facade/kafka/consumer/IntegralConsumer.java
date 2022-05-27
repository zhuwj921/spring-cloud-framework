package com.cloud.integral.facade.kafka.consumer;

import cn.hutool.json.JSONUtil;
import com.cloud.common.constant.KafkaConstant;
import com.cloud.common.model.dto.IntegralDTO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.kafka.support.Acknowledgment;
import org.springframework.stereotype.Component;

/**
 * @author zhuwj
 * @date 2022/05/23 21:46
 * @description: 积分消费者
 **/
@Slf4j
@Component
@RequiredArgsConstructor
public class IntegralConsumer {


    @KafkaListener(topics = KafkaConstant.INTEGRAL_TOPIC)
    public void onMessage(ConsumerRecord<String, String> record, Acknowledgment ack) {
        try {
            log.info("IntegralConsumer onMessage topic: {} , partition: {} ", record.topic(), record.partition());
            String value = record.value();
            log.info("IntegralConsumer : {} ", value);
            IntegralDTO integral = JSONUtil.toBean(value, IntegralDTO.class);
            log.info("integral : {} ", integral.toString());
            ack.acknowledge();
        } catch (Exception e) {
            log.error("IntegralConsumer integral_topic error ", e);
        } finally {

        }
    }
}
