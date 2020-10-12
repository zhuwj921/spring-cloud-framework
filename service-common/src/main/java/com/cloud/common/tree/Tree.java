package com.cloud.common.tree;

/**
 * @author zhuwj
 */
public interface Tree {
    /**
     *  自身id
     * @return
     */
    Long getId();

    /**
     * 父级id
     * @return
     */
    Long getPid();

}
