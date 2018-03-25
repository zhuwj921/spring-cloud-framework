package com.cloud.zhuwj.user.dao;




import com.cloud.zhuwj.common.base.BaseDAO;
import com.cloud.zhuwj.user.domain.MenuDO;

import java.util.List;

/**
 * Created by zhuwj on 2017/11/12.
 */
public interface IMenuDAO extends BaseDAO<MenuDO> {

     List<MenuDO> findAll(MenuDO menuDO);

     int insert(MenuDO menuDO);

     int update(MenuDO menuDO);
}
