package com.cloud.auth.facade.kafka.producer;

import com.cloud.common.enums.IntegralSourceEnum;
import com.cloud.common.enums.IntegralTypeEnum;
import com.cloud.common.model.dto.IntegralDTO;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;
import java.time.LocalDateTime;

@Slf4j
@SpringBootTest
class IntegralProducerTest {

    @Resource
    IntegralProducer integralProducer;

    @Test
    void sendMessage() throws InterruptedException {
        IntegralDTO integral = IntegralDTO.builder().integralNum(200).integralTime(LocalDateTime.now())
                .integralSourceEnum(IntegralSourceEnum.USER_REGISTER).integralTypeEnum(IntegralTypeEnum.GIVE)
                .userId(1528729738571960322L).build();
        integralProducer.sendMessage(integral);
        Thread.sleep(10000);
    }
}