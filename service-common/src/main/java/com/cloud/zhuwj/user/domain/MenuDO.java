package com.cloud.zhuwj.user.domain;


import com.cloud.zhuwj.common.base.DefaultTree;

/**
 * Created by zhuwj on 2018/1/26.
 *
 * 菜单对象
 */
public class MenuDO extends DefaultTree {

    /**
     * 重定向路径
     */
    private String  redirect;
    /**
     * 是否展示在左边菜单栏
     */
    private boolean hidden;
    /**
     * 菜单唯一标识
     */
    private String key;

    private String icon;

    public String getRedirect() {
        return redirect;
    }

    public void setRedirect(String redirect) {
        this.redirect = redirect;
    }


    public boolean isHidden() {
        return hidden;
    }

    public void setHidden(boolean hidden) {
        this.hidden = hidden;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    @Override
    public String toString() {
        return "MenuDO{" +
                "redirect='" + redirect + '\'' +
                ", hidden=" + hidden +
                ", key='" + key + '\'' +
                ", icon='" + icon + '\'' +
                '}';
    }
}
