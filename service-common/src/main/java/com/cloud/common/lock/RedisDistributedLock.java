package com.cloud.common.lock;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.script.DefaultRedisScript;
import org.springframework.data.redis.core.script.RedisScript;
import org.springframework.stereotype.Component;

import java.util.Collections;
import java.util.concurrent.TimeUnit;

/**
 * Description: redis 分布式锁 不支持集群模式
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-10-13
 */

@Slf4j
@Component
@RequiredArgsConstructor
public class RedisDistributedLock {

    private final RedisTemplate<String, Object> redisTemplate;

    private static final String PREFIX = "cloud_lock_";

    private static final long RELEASE_LOCK_SUCCESS = 1;

    private static final String RELEASE_LOCK_SCRIPT = "if redis.call('get', KEYS[1]) == ARGV[1] then return redis.call('del', KEYS[1]) else return 0 end";


    public boolean tryLock(String lockName, String requestId, long expiredInMilliseconds, long maxWaitTimeInMilliseconds) {
        long time = System.currentTimeMillis();
        while (!tryLock(lockName, requestId, expiredInMilliseconds)) {
            if (System.currentTimeMillis() - time > maxWaitTimeInMilliseconds) {
                return false;
            }
        }
        return true;
    }

    public boolean unLock(final String lockName, final String requestId) {
        RedisScript<Long> redisScript = new DefaultRedisScript<>(RELEASE_LOCK_SCRIPT, Long.class);
        Long result = redisTemplate.execute(redisScript, Collections.singletonList(PREFIX + lockName), requestId);
        if (result == RELEASE_LOCK_SUCCESS) {
            return true;
        }
        return false;

    }

    private boolean tryLock(final String lockName, final String requestId, final long expiredInMilliseconds) {
        try {
            return redisTemplate.opsForValue().setIfAbsent(PREFIX + lockName, requestId, expiredInMilliseconds, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            log.error("RedisDistributedLock tryLock failed -- lockName :{} ", lockName, e);
            return false;
        }

    }
}
