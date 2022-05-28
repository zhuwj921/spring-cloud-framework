package com.cloud.integral.facade.kafka.conveter;

import com.cloud.common.model.dto.IntegralDTO;
import com.cloud.integral.entity.IntegralRecord;

import java.time.LocalDateTime;

/**
 * @author zhuwj
 * @date 2022/05/28 16:49
 * @description:
 **/
public class IntegralConverter {

    public static IntegralRecord toIntegralRecord(IntegralDTO integralDTO) {
        if (integralDTO == null) {
            return null;
        }
        IntegralRecord integralRecord = new IntegralRecord();
        integralRecord.setIntegralNo(integralDTO.getIntegralNo());
        integralRecord.setNum(integralDTO.getNum());
        integralRecord.setSource(integralDTO.getIntegralSourceEnum().getCode());
        integralRecord.setIntegralType(integralDTO.getIntegralTypeEnum().getCode());
        integralRecord.init(integralDTO.getUserId());
        integralRecord.setCreateTime(integralDTO.getIntegralTime());
        integralRecord.setLoseEfficacyTime(LocalDateTime.now().plusYears(1));
        return integralRecord;
    }

}
