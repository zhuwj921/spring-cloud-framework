package com.cloud.zhuwj.weixin.config;

import com.foxinmy.weixin4j.cache.RedisCacheStorager;
import com.foxinmy.weixin4j.mp.WeixinProxy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.data.redis.RedisProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @author zhuwj
 * @version V1.0
 * @Description: 微信4j配置
 * @date 2018/5/12.
 */
@Configuration
public class Weixin4jConfiguration {

    private static final Logger logger = LoggerFactory.getLogger(Weixin4jConfiguration.class);
    @Autowired
    private RedisProperties redisProperties;

    @Bean
    public WeixinProxy weixinProxy(){
        logger.info("微信配置信息初始化。。。。。。");
        //使用默认文件缓存
        WeixinProxy weixinProxy = new WeixinProxy();
        //使用redis缓存
      //  WeixinProxy weixinProxy = new WeixinProxy(redisCacheStorager());
        return weixinProxy;
    }

    /**
     * 声明使用redis缓存
     * @return
     */
    private RedisCacheStorager redisCacheStorager(){
        RedisCacheStorager redisCacheStorager = new RedisCacheStorager(redisProperties.getHost(), redisProperties.getPort(), redisProperties.getTimeout());
        return redisCacheStorager;
    }
}
