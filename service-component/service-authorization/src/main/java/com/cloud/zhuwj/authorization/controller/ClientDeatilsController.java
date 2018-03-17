package com.cloud.zhuwj.authorization.controller;

import com.cloud.zhuwj.authorization.service.IClientDetailsService;
import com.cloud.zhuwj.common.base.BaseController;
import com.cloud.zhuwj.common.reponse.Result;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by zhuwj on 2018/1/12.
 * 客户端应用接口
 */
@Api(value = "/client", description = "第三方客户端信息接口")
@RequestMapping(value = "/client", produces = {"application/json;charset=UTF-8"})
@RestController
public class ClientDeatilsController extends BaseController {

    private static final Logger logger = LoggerFactory.getLogger(ClientDeatilsController.class);

    @Autowired
    private IClientDetailsService clientDetailsService;

    @ApiOperation(value = "获取第三方客户端信息", notes = "获取第三方客户端信息")
    @GetMapping("/findAll/{curr}/{pageSize}")
    public Result<String> findAll(@PathVariable("curr") int curr, @PathVariable("pageSize") int pageSize) {
        try {
            return Result.ok("查询成功");
        } catch (Exception e) {
            logger.error("账号信息 分页查询失败", e);
            return Result.error("账号信息 分页查询失败");
        }
    }
}
