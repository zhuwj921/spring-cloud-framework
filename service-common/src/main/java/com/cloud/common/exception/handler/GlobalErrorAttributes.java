package com.cloud.common.exception.handler;

import org.springframework.boot.web.error.ErrorAttributeOptions;
import org.springframework.boot.web.reactive.error.DefaultErrorAttributes;
import org.springframework.core.annotation.Order;
import org.springframework.web.reactive.function.server.ServerRequest;

import java.util.Map;

/**
 * Description: 全局异常属性添加
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-09-28
 */

//@Component
@Order(-2)
public class GlobalErrorAttributes extends DefaultErrorAttributes {

    @Override
    public Map<String, Object> getErrorAttributes(ServerRequest request,
                                                  ErrorAttributeOptions options) {
        Map<String, Object> errorAttributes = super.getErrorAttributes(
                request, options.excluding());
        Throwable error = getError(request);
        return errorAttributes;
    }
}
