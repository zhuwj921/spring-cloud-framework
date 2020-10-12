package com.cloud.common.tree;

import java.util.ArrayList;
import java.util.List;

/**
 * Description: 默认的树
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-10-12
 */

public class DefaultTree<T extends DefaultTree> implements Tree {
    /**
     * 名称
     */
    private String label;

    private Long id;

    private Long pid;

    /**
     * 子集
     */
    private List<T> children = new ArrayList<>();

    @Override
    public Long getId() {
        return id;
    }

    @Override
    public Long getPid() {
        return pid;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setPid(Long pid) {
        this.pid = pid;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public List<T> getChildren() {
        return children;
    }

    public void setChildren(List<T> children) {
        this.children = children;
    }

    @Override
    public String toString() {
        return "DefaultTree{" +
                "label='" + label + '\'' +
                ", id=" + id +
                ", pid=" + pid +
                ", children=" + children +
                '}';
    }
}
