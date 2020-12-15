package com.cloud.message.controller;

import com.cloud.common.response.ResponseResult;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Description: 消息控制器
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-12-15
 */
@Slf4j
@RequestMapping("/message")
@RestController
@RequiredArgsConstructor
public class MessageController {

    /**
     * 服务版本
     *
     * @return
     */
    @GetMapping("version")
    public ResponseResult<String> getVersion() {
        return ResponseResult.ok("1.0.0");
    }
}
