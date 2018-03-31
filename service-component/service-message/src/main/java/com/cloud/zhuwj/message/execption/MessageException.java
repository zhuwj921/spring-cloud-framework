package com.cloud.zhuwj.message.execption;


import com.cloud.zhuwj.common.enums.ErrorCodeEnum;

/**
 * 消息处理异常
 */
public class MessageException extends RuntimeException {

    /**
     * 错误码
     */
    private Integer code;

    /**
     * 错误消息
     */
    private String message;

    /**
     * 异常
     */
    private Exception exception;


    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    @Override
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Exception getException() {
        return exception;
    }

    public void setException(Exception exception) {
        this.exception = exception;
    }

    /**
     *
     * @param code 错误码
     * @param message 错误消息
     * @param exception 异常
     */
    public MessageException(Integer code, String message, Exception exception) {
        this.code = code;
        this.message = message;
        this.exception = exception;
    }

    /**
     *
     * @param code  错误码
     * @param message 错误消息
     */
    public MessageException(Integer code, String message) {
        this.code = code;
        this.message = message;
    }

    /**
     * 默认错误码为1
     * @param message
     */
    public MessageException(String message) {
        this.code = ErrorCodeEnum.MESSAGE_ERROR.getCode();
        this.message = message;
    }
    public MessageException() {
    }
}
