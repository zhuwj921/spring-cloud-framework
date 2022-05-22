package com.cloud.integral.mapper;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.lang.Console;
import cn.hutool.core.util.StrUtil;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;

import java.util.Date;

import static org.junit.jupiter.api.Assertions.*;

@Slf4j
@SpringBootTest
class IntegralRecordMapperTest {

    @Resource
    IntegralRecordMapper integralRecordMapper;

    @Test
    void createTable() {
        String prefixTable = "integral_record";
        int year = DateUtil.year(new Date());
        log.info("year {}", year);
        for (int i = 1; i <= 256; i++) {
            String tableName = StrUtil.format("{}_{}_{}", prefixTable, year, i);
            Console.log(tableName);
            integralRecordMapper.createTable(tableName);

        }
    }
}