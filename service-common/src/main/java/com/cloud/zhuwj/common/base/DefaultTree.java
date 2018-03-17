package com.cloud.zhuwj.common.base;

import javax.persistence.Transient;
import java.util.ArrayList;
import java.util.List;

/**
 * @author zhuwj
 * @version V1.0
 * @Description: 默认树
 * @date 2018/1/27.
 */
public class DefaultTree<T extends DefaultTree> extends BaseDO implements Tree {


    private Integer pid;

    private String label;

    private String path;
    @Transient
    private List<T> children =new ArrayList<>();
    @Override
    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    @Override
    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    @Override
    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public List<T> getChildren() {
        return children;
    }

    public void setChildren(List<T> children) {
        this.children = children;
    }
}
