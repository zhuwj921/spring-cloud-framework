package com.cloud.integral.service;

import cn.hutool.json.JSONUtil;
import com.cloud.common.enums.IntegralSourceEnum;
import com.cloud.common.model.dto.IntegralDTO;
import com.cloud.integral.entity.IntegralErrorRecord;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;

@Slf4j
@SpringBootTest
class IIntegralErrorRecordServiceTest {

    @Resource
    private IIntegralErrorRecordService integralErrorRecordService;

    @Test
    public void test() {
        IntegralErrorRecord errorRecord = new IntegralErrorRecord();
        errorRecord.init(1528729738571960322L);
        errorRecord.setErrorContent("测试");
        errorRecord.setIntegralObject(JSONUtil.toJsonStr(IntegralDTO.builder()));
        errorRecord.setIntegralSource(IntegralSourceEnum.USER_REGISTER.getLabel());
        integralErrorRecordService.save(errorRecord);
    }
}