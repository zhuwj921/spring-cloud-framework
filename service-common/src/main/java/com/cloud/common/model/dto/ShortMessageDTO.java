package com.cloud.common.model.dto;

import com.cloud.common.enums.MessageTemplateCodeEnum;
import lombok.Builder;
import lombok.Data;

import java.util.List;

/**
 * @author zhuwj
 * @date 2022/05/28 22:49
 * @description: 短信消息DTO
 **/
@Builder
@Data
public class ShortMessageDTO {
    /**
     * 电话号码
     */
    private String phoneNumber;
    /**
     * 模板编码
     */
    private MessageTemplateCodeEnum templateCode;
    /**
     * 消息参数
     */
    private List<String> messageParams;
    /**
     * 消息编号
     */
    private String shortMessageNo;

}
