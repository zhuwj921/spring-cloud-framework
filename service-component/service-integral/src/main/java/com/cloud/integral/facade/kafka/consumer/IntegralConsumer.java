package com.cloud.integral.facade.kafka.consumer;

import cn.hutool.core.lang.Console;
import com.cloud.common.constant.KafkaConstant;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.springframework.kafka.annotation.KafkaListener;
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
    public void onMessage(ConsumerRecord<?, ?> record) {
        Console.log("开始消费");
        Console.log(record);
        Console.log(record.value());
    }
}
