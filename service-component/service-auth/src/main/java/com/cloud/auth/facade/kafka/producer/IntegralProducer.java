package com.cloud.auth.facade.kafka.producer;

import cn.hutool.core.collection.ListUtil;
import cn.hutool.core.util.IdUtil;
import cn.hutool.json.JSONUtil;
import com.cloud.common.constant.KafkaConstant;
import com.cloud.common.enums.MessageTemplateCodeEnum;
import com.cloud.common.model.dto.IntegralDTO;
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
 * @description: 积分生产者
 **/
@Slf4j
@Component
@RequiredArgsConstructor
public class IntegralProducer {


    private final KafkaTemplate<String, Object> kafkaTemplate;

    private final ShortMessageProducer shortMessageProducer;

    /**
     * 发送积分消息
     */
    public void sendMessage(IntegralDTO integral) {
        ListenableFuture<SendResult<String, Object>> future = kafkaTemplate.send(KafkaConstant.INTEGRAL_TOPIC, integral);
        future.addCallback(
                result -> {
                    log.info("sendMessage Success topic:{} partition:{}的消息", result.getRecordMetadata().topic(), result.getRecordMetadata().partition());
                },
                ex -> {
                    log.error("sendMessage error, {}", ex.getMessage());
                    //异步处理失败数据
                    log.error("integral data :{}", JSONUtil.toJsonStr(integral));
                    //发送邮件，短信等通知相关人员（运维人员，开发人员）
                    ShortMessageDTO shortMessage = ShortMessageDTO.builder()
                            .shortMessageNo(IdUtil.objectId())
                            .messageParams(ListUtil.toList(JSONUtil.toJsonStr(integral), ex.getMessage()))
                            .templateCode(MessageTemplateCodeEnum.INTEGRAL_ERROR_NOTIFY_TEMPLATE).build();
                    shortMessageProducer.sendMessage(shortMessage);
                });
    }

}
