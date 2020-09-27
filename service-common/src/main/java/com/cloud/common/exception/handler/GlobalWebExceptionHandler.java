package com.cloud.common.exception.handler;

import com.google.common.collect.ImmutableMap;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.autoconfigure.web.ResourceProperties;
import org.springframework.boot.autoconfigure.web.reactive.error.AbstractErrorWebExceptionHandler;
import org.springframework.boot.web.reactive.error.ErrorAttributes;
import org.springframework.context.ApplicationContext;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.reactive.function.BodyInserters;
import org.springframework.web.reactive.function.server.*;
import reactor.core.publisher.Mono;

/**
 * Description: TODO
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-09-27
 */

@Slf4j
public class GlobalWebExceptionHandler extends AbstractErrorWebExceptionHandler {


    public GlobalWebExceptionHandler(ErrorAttributes errorAttributes, ResourceProperties resourceProperties, ApplicationContext applicationContext) {
        super(errorAttributes, resourceProperties, applicationContext);
    }

    @Override
    protected RouterFunction<ServerResponse> getRoutingFunction(ErrorAttributes errorAttributes) {
        return RouterFunctions.route(RequestPredicates.all(), request -> this.renderErrorResponse(request, errorAttributes.getError(request)));
    }

    private Mono<ServerResponse> renderErrorResponse(ServerRequest request, Throwable e) {
        //输出异常堆栈信息
        e.printStackTrace();
        log.error("全局异常拦截:{}", e.getMessage());
        //为了避免 网络供应商、dns解析商 拦截  此处全部返回200    后续上https之后这里可以正常返回
        return ServerResponse.status(HttpStatus.OK)
                .contentType(MediaType.APPLICATION_JSON)
                .body(BodyInserters.fromValue(ImmutableMap.builder()
                        .put("code", -1)
                        .put("msg", e.getMessage())
                        .build()));
    }

}
