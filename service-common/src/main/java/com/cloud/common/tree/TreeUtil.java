package com.cloud.common.tree;

import cn.hutool.core.collection.CollUtil;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 树工具类
 *
 * @author zhuwj
 */
public class TreeUtil {

    /**
     * 构造树状结构
     *
     * @param trees 记录
     * @param pid 父级id
     * @param <T>
     * @return
     */
    public static <T extends DefaultTree> List<T> build(List<T> trees, Long pid) {
        Map<Long, List<T>> map = new HashMap<>(16);
        for (T t : trees) {
            Long parentId = t.getPid();
            List<T> childrens = map.get(parentId);
            if (childrens == null) {
                childrens = new ArrayList<>();
                map.put(parentId, childrens);
            }
            childrens.add(t);
        }
        List<T> treeList = new ArrayList<>();
        childBuild(map, pid, treeList);
        return treeList;
    }

    private static <T extends DefaultTree> void childBuild(Map<Long, List<T>> map, Long pid, List<T> treeList) {
        List<T> tList = map.get(pid);
        if (!CollUtil.isEmpty(tList)) {
            for (T tree : tList) {
                treeList.add(tree);
                childBuild(map, tree.getId(), tree.getChildren());
            }
        }

    }
}

