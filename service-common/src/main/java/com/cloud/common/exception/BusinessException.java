package com.cloud.common.exception;

import cn.hutool.core.util.StrUtil;
import lombok.Getter;

/**
 * Description: 业务异常
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-09-27
 */

@Getter
public class BusinessException extends RuntimeException {


    public BusinessException(CharSequence template, Object... params) {
        super(StrUtil.format(template, params));
    }

}
