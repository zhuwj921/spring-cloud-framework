package com.cloud.gateway.filter;

import com.cloud.common.auth.UserInfo;
import com.cloud.common.utils.RedisUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.time.LocalDateTime;


/**
 * @author zhuwj
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class AuthFilterTest {

    @Test
    public void test(){
        UserInfo userInfo = new UserInfo();
        userInfo.setLastLoginTime(LocalDateTime.now());
        RedisUtil.set("userInfoTest",userInfo);
        UserInfo userInfo1 =  RedisUtil.get("userInfoTest",UserInfo.class);
        System.out.println(userInfo1.toString());
    }

}
