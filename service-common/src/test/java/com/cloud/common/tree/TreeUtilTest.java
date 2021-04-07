package com.cloud.common.tree;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.lang.Console;
import org.junit.jupiter.api.Test;

import java.util.List;

public class TreeUtilTest {

    @Test
    public void build() {

        DefaultTree defaultTree = new DefaultTree();
        defaultTree.setId(1L);
        defaultTree.setLabel("公司");
        defaultTree.setPid(-1L);

        DefaultTree defaultTree2 = new DefaultTree();
        defaultTree2.setId(2L);
        defaultTree2.setLabel("行政部");
        defaultTree2.setPid(1L);

        DefaultTree defaultTree3 = new DefaultTree();
        defaultTree3.setId(3L);
        defaultTree3.setLabel("技术部");
        defaultTree3.setPid(1L);

        DefaultTree defaultTree4 = new DefaultTree();
        defaultTree4.setId(4L);
        defaultTree4.setLabel("产品组");
        defaultTree4.setPid(3L);

        DefaultTree defaultTree5 = new DefaultTree();
        defaultTree5.setId(5L);
        defaultTree5.setLabel("开发组");
        defaultTree5.setPid(3L);

        List<DefaultTree> list = CollUtil.newArrayList(defaultTree,defaultTree2,defaultTree3,defaultTree4,defaultTree5);

        List<DefaultTree> treeList = TreeUtil.build(list,-1L);
        Console.error("-----输出树状结构-----");
        Console.error(treeList);
    }
}
