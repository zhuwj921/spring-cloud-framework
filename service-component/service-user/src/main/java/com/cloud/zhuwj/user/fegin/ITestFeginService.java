package com.cloud.zhuwj.user.fegin;

import com.cloud.zhuwj.common.reponse.Result;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author zhuwj
 * @version V1.0
 * @Description: TODO
 * @date 2018/4/1.
 */
@FeignClient(value = "service-authorization")
public interface ITestFeginService {
    @RequestMapping(value = "/test",method = RequestMethod.GET)
    Result<String> test();
}
