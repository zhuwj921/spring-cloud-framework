package com.cloud.zhuwj.common.exception;

import com.cloud.zhuwj.common.enums.ErrorCodeEnum;

/**
 * Created by zhuw on 2018/1/11.
 */
public class BusinessException extends RuntimeException {

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
    public BusinessException(Integer code, String message, Exception exception) {
        this.code = code;
        this.message = message;
        this.exception = exception;
    }

    /**
     *
     * @param code  错误码
     * @param message 错误消息
     */
    public BusinessException(Integer code, String message) {
        this.code = code;
        this.message = message;
    }

    /**
     * 错误消息
     * @param message
     */
    public BusinessException( String message) {
        this.code = ErrorCodeEnum.BUSINESS_FAIL.getCode();
        this.message = message;
    }

    public BusinessException() {
    }
}
