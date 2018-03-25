package com.cloud.zhuwj.user.vo;


import com.cloud.zhuwj.user.domain.MenuDO;

import java.io.Serializable;
import java.util.List;

/**
 * Created by zhuwj on 2018/1/25.
 *  构建前端所需要的用户信息对象
 */
public class UserInfoVO implements Serializable {


    private String username;

    private List<MenuDO> navMenuList;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public List<MenuDO> getNavMenuList() {
        return navMenuList;
    }

    public void setNavMenuList(List<MenuDO> navMenuList) {
        this.navMenuList = navMenuList;
    }
}
