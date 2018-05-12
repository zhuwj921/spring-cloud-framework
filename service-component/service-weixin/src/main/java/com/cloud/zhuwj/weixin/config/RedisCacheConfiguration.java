package com.cloud.zhuwj.weixin.config;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.data.redis.RedisProperties;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

/**
 * @author zhuwj
 * @Description: ${redis 缓存配置类}
 * @date 2018/3/16 16:18
 */
@Configuration
@EnableCaching
public class RedisCacheConfiguration {
    Logger logger = LoggerFactory.getLogger(RedisCacheConfiguration.class);

    @Autowired
    private RedisProperties redisProperties;

    @Bean(name = "jedisPool")
    public JedisPool jedisPool() {
        JedisPoolConfig jedisPoolConfig = new JedisPoolConfig();
        JedisPool jedisPool = new JedisPool(jedisPoolConfig, redisProperties.getHost(), redisProperties.getPort(), redisProperties.getTimeout(), redisProperties.getPassword());
        logger.info("JedisPool  加载成功。。。。。");
        return jedisPool;
    }


}
