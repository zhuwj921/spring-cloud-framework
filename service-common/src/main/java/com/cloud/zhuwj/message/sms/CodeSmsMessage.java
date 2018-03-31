package com.cloud.zhuwj.message.sms;


/**
 * @author zhuwj
 * @Description: 验证码短信消息
 * @date 2018/3/26 17:31
 */
public class CodeSmsMessage extends BaseSmsMessage {

    /**
     * 短信验证码
     */
    private String code;

    /**
     * 验证码时间
     */
    private Long time;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Long getTime() {
        return time;
    }

    public void setTime(Long time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "CodeSmsMessage{" +
                "code='" + code + '\'' +
                ", time=" + time +
                '}';
    }
}
