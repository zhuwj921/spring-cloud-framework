package com.cloud.common.exception.handler;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * Description: TODO
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-09-27
 */
@Slf4j
@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(Exception.class)
    private ResponseEntity<String> handleAccessException(Exception e) {
        return ResponseEntity.status(HttpStatus.FORBIDDEN).body("十三水");
    }
}
