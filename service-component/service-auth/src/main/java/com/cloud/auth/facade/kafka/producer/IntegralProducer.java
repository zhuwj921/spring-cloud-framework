package com.cloud.auth.facade.kafka.producer;

import com.cloud.common.constant.KafkaConstant;
import com.cloud.common.model.dto.IntegralDTO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.stereotype.Component;

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
        kafkaTemplate.send(KafkaConstant.INTEGRAL_TOPIC, integral);
    }

}
