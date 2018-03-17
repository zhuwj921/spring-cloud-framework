package com.cloud.zhuwj.common.utils;

import com.cloud.zhuwj.common.base.DefaultTree;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author zhuwj
 * @version V1.0
 * @Description: 树工具类
 * @date 2018/1/28.
 */
public  class TreeUtil {

    public static <T extends DefaultTree> List<T> build(List<T> trees , Integer pid) {
        Map<Integer, List<T>> map = new HashMap<>();
        for (T t : trees) {
            Integer parentId = t.getPid();
            List<T> childrens = map.get(parentId);
            if (childrens == null) {
                childrens = new ArrayList<>();
                map.put(parentId, childrens);
            }
            childrens.add(t);
        }
        List<T> treeList = new ArrayList<>();
        childBuild(map,pid,treeList);
        return  treeList ;
    }

    private  static <T extends DefaultTree> void  childBuild(Map<Integer, List<T>> map, Integer pid , List<T> treeList){
        List<T> tList = map.get(pid);
        if(!CollectionUtils.isEmpty(tList)){
            for(T tree : tList){
                treeList.add(tree);
                childBuild(map ,tree.getId(), tree.getChildren());
            }
        }

    }
}
