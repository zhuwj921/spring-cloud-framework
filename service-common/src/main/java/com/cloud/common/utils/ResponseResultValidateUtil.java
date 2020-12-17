package com.cloud.common.utils;

import com.cloud.common.enums.ResponseCodeEnum;
import com.cloud.common.exception.ResponseResultValidateException;
import com.cloud.common.response.ResponseResult;

/**
 * Description: 结果校验
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-12-15
 */

public class ResponseResultValidateUtil {

    public static <T> T validate(ResponseResult<T> responseResult) {
        if (!ResponseCodeEnum.OK.getCode().equals(responseResult.getCode())) {
            throw new ResponseResultValidateException(responseResult.getMessage());
        }
        return responseResult.getData();
    }
}
