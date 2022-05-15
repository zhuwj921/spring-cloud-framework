package com.cloud.integral.service;

import cn.hutool.core.util.IdUtil;
import com.cloud.common.enums.IntegralSourceEnum;
import com.cloud.common.enums.IntegralTypeEnum;
import com.cloud.integral.entity.IntegralRecord;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.LocalDateTime;

@SpringBootTest
public class IIntegralRecordServiceTest {

    @Autowired
    IIntegralRecordService integralRecordService;

    @Test
    public void test() {
        IntegralRecord record = new IntegralRecord();
        record.init(2l);
        record.setIntegralNo(IdUtil.objectId());
        record.setSource(IntegralSourceEnum.USER_REGISTER.getCode());
        record.setIntegralType(IntegralTypeEnum.CONSUMER.getCode());
        record.setNum(100);
        record.setLoseEfficacyTime(LocalDateTime.now());
        integralRecordService.save(record);
    }
}