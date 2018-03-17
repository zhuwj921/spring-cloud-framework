package com.cloud.zhuwj.authorization.fegin;

import com.cloud.zhuwj.common.reponse.Result;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by lenovo on 2018/1/18.
 */
@FeignClient(value = "service-user")
public interface IUserFeginService {
    @RequestMapping(value = "/test",method = RequestMethod.GET)
    Result<String> test();
}
