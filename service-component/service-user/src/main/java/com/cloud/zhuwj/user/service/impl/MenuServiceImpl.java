package com.cloud.zhuwj.user.service.impl;


import com.cloud.zhuwj.common.constants.GlobalContanst;
import com.cloud.zhuwj.common.utils.TreeUtil;
import com.cloud.zhuwj.user.dao.IMenuDAO;
import com.cloud.zhuwj.user.domain.MenuDO;
import com.cloud.zhuwj.user.service.IMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zhuwj on 2018/1/26.
 */
@Service
public class MenuServiceImpl implements IMenuService,GlobalContanst {

    @Autowired
    private IMenuDAO menuDAO;

    @Override
    public List<MenuDO> findTreeList(MenuDO menuDO) {

        List<MenuDO> menuDOS =  menuDAO.findAll(menuDO);

        return   TreeUtil.build(menuDOS,DEFAULT_PID);
    }

    @Override
    public void save(MenuDO menuDO) {
        menuDAO.insert(menuDO);
    }

    @Override
    public void update(MenuDO menuDO) {
        menuDAO.update(menuDO);
    }
}
