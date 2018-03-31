package com.cloud.zhuwj.message.util;

import com.cloud.zhuwj.common.reponse.Result;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @author zhuwj
 * @Description: 消息发送工具类
 * @date 2018/3/28 11:02
 */
public final class MessageUtil {

    private static final Logger logger = LoggerFactory.getLogger(MessageUtil.class);
    /**
     * 消息发送
     * @param templateId 模板id
     * @param datas 参数
     * @param phones 电话号码
     * @return
     */
    public static Result<String> sendMessage(String templateId, String[] datas, String[] phones){
        //根据短信平台进行发送
        return Result.ok("发送成功");
    }


}
