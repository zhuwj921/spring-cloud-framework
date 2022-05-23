package com.cloud.auth.facade.client;

import com.cloud.common.response.ResponseResult;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Description: 消息服务 feign client
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-12-15
 */

@FeignClient(name = "service-message")
public interface MessageServiceClient {

    /**
     * 获取服务版本
     *
     * @return
     */
    @GetMapping("message/version")
    ResponseResult<String> getVersion();
}
