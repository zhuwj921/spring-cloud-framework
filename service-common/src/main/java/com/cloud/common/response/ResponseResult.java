package com.cloud.common.response;


import com.cloud.common.enums.ResponseCodeEnum;
import lombok.Builder;
import lombok.Data;

import java.io.Serializable;

/**
 * @desc：返回处理结果
 * @author：zhuwj
 * @date：2020.05.10
 * @version：1.0.0
 */
@Data
@Builder
public class ResponseResult<T> implements Serializable {

    private static final long serialVersionUID = 8992436576262574064L;
    /**
     * 响应吗
     */
    private String code;
    /**
     * 请求路径
     */
    private String path;
    /**
     * 请求时间戳
     */
    private Long timestamp;
    /**
     * 请求id
     */
    private String requestId;
    /**
     * 消息描述
     */
    private String message;
    /**
     * 请求结果
     */
    private T result;

    public static <T> ResponseResult<T> ok(T result) {

        return (ResponseResult<T>) ResponseResult.builder().code(ResponseCodeEnum.OK.getCode()).path(null)
                .timestamp(System.currentTimeMillis()).requestId(null)
                .message(ResponseCodeEnum.OK.getMsg()).result(result).build();
    }

    public static <T> ResponseResult<T> error(String message) {

        return (ResponseResult<T>) ResponseResult.builder().code(ResponseCodeEnum.ERROR.getCode()).path(null)
                .timestamp(System.currentTimeMillis()).requestId(null)
                .message(message).result(null).build();
    }

}
