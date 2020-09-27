package com.cloud.common.exception;

import cn.hutool.core.util.StrUtil;
import lombok.Getter;

import static org.springframework.http.HttpStatus.UNAUTHORIZED;

/**
 * Description: 授权异常
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-09-27
 */

@Getter
public class AuthException extends RuntimeException {

    private Integer status = UNAUTHORIZED.value();

    public AuthException(CharSequence template, Object... params) {
        super(StrUtil.format(template, params));
    }

}
