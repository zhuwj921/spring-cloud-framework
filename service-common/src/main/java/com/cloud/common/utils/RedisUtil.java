//package com.cloud.common.utils;
//
//import com.cloud.common.lock.RedisDistributedLock;
//import lombok.RequiredArgsConstructor;
//import org.springframework.data.redis.core.BoundListOperations;
//import org.springframework.data.redis.core.RedisTemplate;
//import org.springframework.stereotype.Component;
//import org.springframework.util.CollectionUtils;
//
//import javax.annotation.PostConstruct;
//import java.util.List;
//import java.util.Map;
//import java.util.Set;
//import java.util.concurrent.TimeUnit;
//
///**
// * @author: zhuwj
// * @date: 2020/9/22 22:47
// * @description: redis工具类
// */
//@Component
//@RequiredArgsConstructor
//public class RedisUtil {
//
//    private final RedisTemplate<String, Object> redisTemplateBean;
//
//    private final RedisDistributedLock redisDistributedLockBean;
//
//    private static RedisTemplate<String, Object> redisTemplate;
//
//    private static RedisDistributedLock redisDistributedLock;
//
//    @PostConstruct
//    public void init() {
//        redisTemplate = redisTemplateBean;
//        redisDistributedLock = redisDistributedLockBean;
//    }
//
//
//
//    /*============================lock=============================*/
//
//    public static boolean tryLock(String lockName, String requestId, long expiredInMilliseconds, long maxWaitTimeInMilliseconds) {
//        return redisDistributedLock.tryLock(lockName, requestId, expiredInMilliseconds, maxWaitTimeInMilliseconds);
//    }
//
//    public static boolean unLock(String lockName, String requestId) {
//        return redisDistributedLock.unLock(lockName, requestId);
//    }
//
//
//    /*============================lock=============================*/
//
//
//    /**
//     * 指定缓存失效时间
//     *
//     * @param key  键
//     * @param time 时间(秒)
//     * @return
//     */
//    public static boolean expire(String key, long time) {
//        try {
//            if (time > 0) {
//                redisTemplate.expire(key, time, TimeUnit.SECONDS);
//            }
//            return true;
//        } catch (Exception e) {
//            e.printStackTrace();
//            return false;
//        }
//    }
//
//    /**
//     * 根据key 获取过期时间
//     *
//     * @param key 键 不能为null
//     * @return 时间(秒) 返回0代表为永久有效
//     */
//    public static long getExpire(String key) {
//        return redisTemplate.getExpire(key, TimeUnit.SECONDS);
//    }
//
//    /**
//     * 判断key是否存在
//     *
//     * @param key 键
//     * @return true 存在 false不存在
//     */
//    public static boolean hasKey(String key) {
//        try {
//            return redisTemplate.hasKey(key);
//        } catch (Exception e) {
//            e.printStackTrace();
//            return false;
//        }
//    }
//
//    /**
//     * 删除缓存
//     *
//     * @param key 可以传一个值 或多个
//     */
//    @SuppressWarnings("unchecked")
//    public static void del(String... key) {
//        if (key != null && key.length > 0) {
//            if (key.length == 1) {
//                redisTemplate.delete(key[0]);
//            } else {
//            }
//        }
//    }
//
//    /*============================String=============================*/
//
//    /**
//     * 获取字符串
//     *
//     * @param key
//     * @return
//     */
//    public static String get(String key) {
//        return get(key, String.class);
//    }
//
//    /**
//     * 普通缓存获取
//     *
//     * @param key 键
//     * @return 值
//     */
//    public static <T> T get(String key, Class<T> clazz) {
//        return key == null ? null : clazz.cast(redisTemplate.opsForValue().get(key));
//    }
//
//
//    /**
//     * 普通缓存放入
//     *
//     * @param key   键
//     * @param value 值
//     * @return true成功 false失败
//     */
//    public static boolean set(String key, Object value) {
//        try {
//            redisTemplate.opsForValue().set(key, value);
//            return true;
//        } catch (Exception e) {
//            e.printStackTrace();
//            return false;
//        }
//    }
//
//    /**
//     * 普通缓存放入并设置时间
//     *
//     * @param key   键
//     * @param value 值
//     * @param time  时间(秒) time要大于0 如果time小于等于0 将设置无限期
//     * @return true成功 false 失败
//     */
//    public static boolean set(String key, Object value, long time) {
//        try {
//            if (time > 0) {
//                redisTemplate.opsForValue().set(key, value, time, TimeUnit.SECONDS);
//            } else {
//                set(key, value);
//            }
//            return true;
//        } catch (Exception e) {
//            e.printStackTrace();
//            return false;
//        }
//    }
//
//    /**
//     * 递增
//     *
//     * @param key   键
//     * @param delta 要增加几(大于0)
//     * @return
//     */
//    public static long incr(String key, long delta) {
//        if (delta < 0) {
//            throw new RuntimeException("递增因子必须大于0");
//        }
//        return redisTemplate.opsForValue().increment(key, delta);
//    }
//
//    /**
//     * 递减
//     *
//     * @param key   键
//     * @param delta 要减少几(小于0)
//     * @return
//     */
//    public static long decr(String key, long delta) {
//        if (delta < 0) {
//            throw new RuntimeException("递减因子必须大于0");
//        }
//        return redisTemplate.opsForValue().increment(key, -delta);
//    }
//    /*============================String end=============================*/
//
//    /*================================Map==============================*/
//
//    /**
//     * HashGet
//     *
//     * @param key  键 不能为null
//     * @param item 项 不能为null
//     * @return 值
//     */
//    public static Object hGet(String key, String item) {
//        return redisTemplate.opsForHash().get(key, item);
//    }
//
//    /**
//     * 获取hashKey对应的所有键值
//     *
//     * @param key 键
//     * @return 对应的多个键值
//     */
//    public static Map<Object, Object> hmGet(String key) {
//        return redisTemplate.opsForHash().entries(key);
//    }
//
//    /**
//     * HashSet
//     *
//     * @param key 键
//     * @param map 对应多个键值
//     * @return true 成功 false 失败
//     */
//    public static boolean hmGet(String key, Map<String, Object> map) {
//        try {
//            redisTemplate.opsForHash().putAll(key, map);
//            return true;
//        } catch (Exception e) {
//            e.printStackTrace();
//            return false;
//        }
//    }
//
//    /**
//     * HashSet 并设置时间
//     *
//     * @param key  键
//     * @param map  对应多个键值
//     * @param time 时间(秒)
//     * @return true成功 false失败
//     */
//    public static boolean hmSet(String key, Map<String, Object> map, long time) {
//        try {
//            redisTemplate.opsForHash().putAll(key, map);
//            if (time > 0) {
//                expire(key, time);
//            }
//            return true;
//        } catch (Exception e) {
//            e.printStackTrace();
//            return false;
//        }
//    }
//
//    /**
//     * 向一张hash表中放入数据,如果不存在将创建
//     *
//     * @param key   键
//     * @param item  项
//     * @param value 值
//     * @return true 成功 false失败
//     */
//    public static boolean hSet(String key, String item, Object value) {
//        try {
//            redisTemplate.opsForHash().put(key, item, value);
//            return true;
//        } catch (Exception e) {
//            e.printStackTrace();
//            return false;
//        }
//    }
//
//    /**
//     * 向一张hash表中放入数据,如果不存在将创建
//     *
//     * @param key   键
//     * @param item  项
//     * @param value 值
//     * @param time  时间(秒)  注意:如果已存在的hash表有时间,这里将会替换原有的时间
//     * @return true 成功 false失败
//     */
//    public static boolean hSet(String key, String item, Object value, long time) {
//        try {
//            redisTemplate.opsForHash().put(key, item, value);
//            if (time > 0) {
//                expire(key, time);
//            }
//            return true;
//        } catch (Exception e) {
//            e.printStackTrace();
//            return false;
//        }
//    }
//
//    /**
//     * 删除hash表中的值
//     *
//     * @param key  键 不能为null
//     * @param item 项 可以使多个 不能为null
//     */
//    public static void hDel(String key, Object... item) {
//        redisTemplate.opsForHash().delete(key, item);
//    }
//
//    /**
//     * 判断hash表中是否有该项的值
//     *
//     * @param key  键 不能为null
//     * @param item 项 不能为null
//     * @return true 存在 false不存在
//     */
//    public static boolean hHasKey(String key, String item) {
//        return redisTemplate.opsForHash().hasKey(key, item);
//    }
//
//    /**
//     * hash递增 如果不存在,就会创建一个 并把新增后的值返回
//     *
//     * @param key  键
//     * @param item 项
//     * @param by   要增加几(大于0)
//     * @return
//     */
//    public static double hIncr(String key, String item, double by) {
//        return redisTemplate.opsForHash().increment(key, item, by);
//    }
//
//    /**
//     * hash递减
//     *
//     * @param key  键
//     * @param item 项
//     * @param by   要减少记(小于0)
//     * @return
//     */
//    public static double hDecr(String key, String item, double by) {
//        return redisTemplate.opsForHash().increment(key, item, -by);
//    }
//    /*================================Map  end====================*/
//
//    /*============================set=============================*/
//
//    /**
//     * 根据key获取Set中的所有值
//     *
//     * @param key 键
//     * @return
//     */
//    public static Set<Object> sGet(String key) {
//        try {
//            return redisTemplate.opsForSet().members(key);
//        } catch (Exception e) {
//            e.printStackTrace();
//            return null;
//        }
//    }
//
//    /**
//     * 根据value从一个set中查询,是否存在
//     *
//     * @param key   键
//     * @param value 值
//     * @return true 存在 false不存在
//     */
//    public static boolean sHasKey(String key, Object value) {
//        try {
//            return redisTemplate.opsForSet().isMember(key, value);
//        } catch (Exception e) {
//            e.printStackTrace();
//            return false;
//        }
//    }
//
//    /**
//     * 将数据放入set缓存
//     *
//     * @param key    键
//     * @param values 值 可以是多个
//     * @return 成功个数
//     */
//    public static long sSet(String key, Object... values) {
//        try {
//            return redisTemplate.opsForSet().add(key, values);
//        } catch (Exception e) {
//            e.printStackTrace();
//            return 0;
//        }
//    }
//
//    /**
//     * 将set数据放入缓存
//     *
//     * @param key    键
//     * @param time   时间(秒)
//     * @param values 值 可以是多个
//     * @return 成功个数
//     */
//    public static long sSetAndTime(String key, long time, Object... values) {
//        try {
//            Long count = redisTemplate.opsForSet().add(key, values);
//            if (time > 0) {
//                expire(key, time);
//            }
//            return count;
//        } catch (Exception e) {
//            e.printStackTrace();
//            return 0;
//        }
//    }
//
//    /**
//     * 获取set缓存的长度
//     *
//     * @param key 键
//     * @return
//     */
//    public static long sGetSetSize(String key) {
//        try {
//            return redisTemplate.opsForSet().size(key);
//        } catch (Exception e) {
//            e.printStackTrace();
//            return 0;
//        }
//    }
//
//    /**
//     * 移除值为value的
//     *
//     * @param key    键
//     * @param values 值 可以是多个
//     * @return 移除的个数
//     */
//    public static long setRemove(String key, Object... values) {
//        try {
//            Long count = redisTemplate.opsForSet().remove(key, values);
//            return count;
//        } catch (Exception e) {
//            e.printStackTrace();
//            return 0;
//        }
//    }
//    /*============================set end=============================*/
//
//    /*===============================list=============================*/
//
//    /**
//     * 获取list缓存的内容
//     *
//     * @param key   键
//     * @param start 开始
//     * @param end   结束  0 到 -1代表所有值
//     * @return
//     */
//    public static List<Object> lGet(String key, long start, long end) {
//        try {
//            return redisTemplate.opsForList().range(key, start, end);
//        } catch (Exception e) {
//            e.printStackTrace();
//            return null;
//        }
//    }
//
//    /**
//     * 获取list缓存的长度
//     *
//     * @param key 键
//     * @return
//     */
//    public static long lGetListSize(String key) {
//        try {
//            return redisTemplate.opsForList().size(key);
//        } catch (Exception e) {
//            e.printStackTrace();
//            return 0;
//        }
//    }
//
//    /**
//     * 通过索引 获取list中的值
//     *
//     * @param key   键
//     * @param index 索引  index>=0时， 0 表头，1 第二个元素，依次类推；index<0时，-1，表尾，-2倒数第二个元素，依次类推
//     * @return
//     */
//    public static Object lGetIndex(String key, long index) {
//        try {
//            return redisTemplate.opsForList().index(key, index);
//        } catch (Exception e) {
//            e.printStackTrace();
//            return null;
//        }
//    }
//
//    /**
//     * 将list放入缓存
//     *
//     * @param key   键
//     * @param value 值
//     * @return
//     */
//    public static boolean lSet(String key, Object value) {
//        try {
//            redisTemplate.opsForList().rightPush(key, value);
//            return true;
//        } catch (Exception e) {
//            e.printStackTrace();
//            return false;
//        }
//    }
//
//    /**
//     * 将list放入缓存
//     *
//     * @param key   键
//     * @param value 值
//     * @param time  时间(秒)
//     * @return
//     */
//    public static boolean lSet(String key, Object value, long time) {
//        try {
//            redisTemplate.opsForList().rightPush(key, value);
//            if (time > 0) {
//                expire(key, time);
//            }
//            return true;
//        } catch (Exception e) {
//            e.printStackTrace();
//            return false;
//        }
//    }
//
//    /**
//     * 将list放入缓存
//     *
//     * @param key   键
//     * @param value 值
//     * @return
//     */
//    public static boolean lSet(String key, List<Object> value) {
//        try {
//            redisTemplate.opsForList().rightPushAll(key, value);
//            return true;
//        } catch (Exception e) {
//            e.printStackTrace();
//            return false;
//        }
//    }
//
//    /**
//     * 将list放入缓存
//     *
//     * @param key   键
//     * @param value 值
//     * @param time  时间(秒)
//     * @return
//     */
//    public static boolean lSet(String key, List<Object> value, long time) {
//        try {
//            redisTemplate.opsForList().rightPushAll(key, value);
//            if (time > 0) {
//                expire(key, time);
//            }
//            return true;
//        } catch (Exception e) {
//            e.printStackTrace();
//            return false;
//        }
//    }
//
//    /**
//     * 根据索引修改list中的某条数据
//     *
//     * @param key   键
//     * @param index 索引
//     * @param value 值
//     * @return
//     */
//    public static boolean lUpdateIndex(String key, long index, Object value) {
//        try {
//            redisTemplate.opsForList().set(key, index, value);
//            return true;
//        } catch (Exception e) {
//            e.printStackTrace();
//            return false;
//        }
//    }
//
//    /**
//     * 移除N个值为value
//     *
//     * @param key   键
//     * @param count 移除多少个
//     * @param value 值
//     * @return 移除的个数
//     */
//    public static long lRemove(String key, long count, Object value) {
//        try {
//            Long remove = redisTemplate.opsForList().remove(key, count, value);
//            return remove;
//        } catch (Exception e) {
//            e.printStackTrace();
//            return 0;
//        }
//    }
//    /*===============================list  end=============================*/
//
//    /**
//     * 模糊查询获取key值
//     *
//     * @param pattern "*"查询所有key
//     * @return
//     */
//    public static Set keys(String pattern) {
//        return redisTemplate.keys(pattern);
//    }
//
//    /**
//     * 使用Redis的消息队列
//     *
//     * @param channel
//     * @param message 消息内容
//     */
//    public static void convertAndSend(String channel, Object message) {
//        redisTemplate.convertAndSend(channel, message);
//    }
//
//    /**
//     * 根据起始结束序号遍历Redis中的list
//     *
//     * @param listKey
//     * @param start   起始序号
//     * @param end     结束序号
//     * @return
//     */
//    public static List<Object> rangeList(String listKey, long start, long end) {
//        //绑定操作
//        BoundListOperations<String, Object> boundValueOperations = redisTemplate.boundListOps(listKey);
//        //查询数据
//        return boundValueOperations.range(start, end);
//    }
//
//    /**
//     * 弹出右边的值 --- 并且移除这个值
//     *
//     * @param listKey
//     */
//    public static Object rightPop(String listKey) {
//        //绑定操作
//        BoundListOperations<String, Object> boundValueOperations = redisTemplate.boundListOps(listKey);
//        return boundValueOperations.rightPop();
//    }
//
//
//}
