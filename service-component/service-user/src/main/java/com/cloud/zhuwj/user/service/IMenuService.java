package com.cloud.zhuwj.user.service;



import com.cloud.zhuwj.user.domain.MenuDO;

import java.util.List;

/**
 * Created by zhuwj on 2018/1/26.
 */
public interface IMenuService {


      List<MenuDO> findTreeList(MenuDO menuDO);

      void save(MenuDO menuDO);

      void update(MenuDO menuDO);
}
