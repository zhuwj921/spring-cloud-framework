package com.cloud.zhuwj.user.controller;

import com.cloud.zhuwj.common.base.BaseController;
import com.cloud.zhuwj.common.reponse.Result;
import com.cloud.zhuwj.user.aspect.CloudLog;
import com.cloud.zhuwj.user.domain.MenuDO;
import com.cloud.zhuwj.user.service.IMenuService;
import com.cloud.zhuwj.user.vo.UserInfoVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author zhuwj
 * @version V1.0
 * @Description: 用户服务验证
 * @date 2018/1/21.
 */
@Api(description = "用户信息接口")
@RestController
public class UserController extends BaseController {
    private static final Logger logger = LoggerFactory.getLogger(UserController.class);
    @Autowired
    private IMenuService menuService;
    @ApiOperation(value = "当前登入用户的信息", notes = "获取当前登入用户的信息")
    @GetMapping("/findInfo")
    public Result<UserInfoVO> findInfo(){
        UserInfoVO userInfo = new UserInfoVO();
        userInfo.setUsername(getUsername());
        userInfo.setNavMenuList(menuService.findTreeList(new MenuDO()));
        return Result.ok(userInfo);
    }

    @CloudLog(description = "测试操作")
    @GetMapping("/test")
    public Result<String> tets(String test){
        return Result.ok("ssss"+test);
    }
}
