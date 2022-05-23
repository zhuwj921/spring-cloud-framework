package com.cloud.integral.service;

import cn.hutool.core.util.IdUtil;
import com.cloud.common.enums.IntegralSourceEnum;
import com.cloud.common.enums.IntegralTypeEnum;
import com.cloud.integral.entity.IntegralRecord;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@SpringBootTest
public class IIntegralRecordServiceTest {

    @Autowired
    IIntegralRecordService integralRecordService;

    @Test
    public void test() {
        List<IntegralRecord> list = new ArrayList<>();
        for (int i = 0; i < 1; i++) {
            IntegralRecord record = new IntegralRecord();
            record.init(1528729738571960322L);
            record.setIntegralNo(IdUtil.objectId());
            record.setSource(IntegralSourceEnum.USER_REGISTER.getCode());
            record.setIntegralType(IntegralTypeEnum.CONSUMER.getCode());
            record.setNum(100);
            record.setLoseEfficacyTime(LocalDateTime.now());
            list.add(record);
            log.info("插入{},i", i);
            integralRecordService.saveBatch(list);
            list.clear();
        }
    }
}