package com.cloud.zhuwj.message;

import com.gdf.carbon.common.message.sms.TextSmsMessage;

/**
 * @author zhuwj
 * @Description: 消息创建工具
 * @date 2018/3/28 13:37
 */
public final class MsCreateUtil {

    /**
     * 短信文本消息创建方法
     * @param templateId 模板id
     * @param contents 消息内容
     * @return
     */
    public static TextSmsMessage smsText(String templateId,String[] contents){

      return  new TextSmsMessage(templateId,contents);
    }

    /**
     * 短信文本消息创建方法
     * @param templateId 模板id
     * @param contents 消息内容
     * @param phones 电话
     * @return
     */
    public static TextSmsMessage smsText(String templateId,String[] contents,String[] phones){

        return  new TextSmsMessage(templateId,contents,phones);
    }
}
