package com.cloud.zhuwj.common.base;

import com.cloud.zhuwj.common.constants.GlobalContanst;
import com.cloud.zhuwj.common.utils.DateUtil;
import com.cloud.zhuwj.common.utils.WebContextUtil;

/**
 * Created by zhuwj on 2018/1/11.
 */
public class BaseController implements GlobalContanst, DateUtil.DATE_PATTERN {

    /**
     * 获取当前登入用户的名称
     * @return
     */
    public String getUsername() {

        return WebContextUtil.getUsername();
    }


}
