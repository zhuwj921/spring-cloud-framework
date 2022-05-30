package com.cloud.common.exception;

import cn.hutool.core.util.StrUtil;
import lombok.Getter;

/**
 * Description: Redisson异常
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-09-27
 */

@Getter
public class RedissonException extends RuntimeException {


    public RedissonException(CharSequence template, Object... params) {
        super(StrUtil.format(template, params));
    }

}
