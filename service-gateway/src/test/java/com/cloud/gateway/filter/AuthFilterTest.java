package com.cloud.gateway.filter;

import com.cloud.common.auth.UserInfo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.redisson.api.RBucket;
import org.redisson.api.RedissonClient;
import org.redisson.codec.JsonJacksonCodec;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.time.LocalDateTime;


/**
 * @author zhuwj
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class AuthFilterTest {

    @Autowired
    private RedissonClient redissonClient;

    @Test
    public void test() {
        UserInfo userInfo = new UserInfo();
        userInfo.setLastLoginTime(LocalDateTime.now());
        userInfo.setUsername("zhuwj");
        RBucket<UserInfo> rBucket = redissonClient.getBucket("userInfoTest", new JsonJacksonCodec());
        rBucket.set(userInfo);
        System.out.println(rBucket.get());
    }

}
