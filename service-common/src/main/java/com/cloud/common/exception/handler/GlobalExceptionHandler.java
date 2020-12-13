package com.cloud.common.exception.handler;

import com.cloud.common.exception.AuthException;
import com.cloud.common.response.ResponseResult;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * Description: webflux 异常属性
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-09-27
 */
@Slf4j
@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(Exception.class)
    private ResponseResult<String> handleException(Exception e) {
        return ResponseResult.error(e.getMessage());
    }

    @ExceptionHandler(AuthException.class)
    private ResponseResult<String> handleAuthException(Exception e) {
        return ResponseResult.error(e.getMessage());
    }


}
