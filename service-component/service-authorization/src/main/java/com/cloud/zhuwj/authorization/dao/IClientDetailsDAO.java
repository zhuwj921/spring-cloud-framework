package com.cloud.zhuwj.authorization.dao;



import com.cloud.zhuwj.authorization.ClientDetailsDO;
import com.cloud.zhuwj.common.base.BaseDAO;

import java.util.List;

/**
 * Created by zhuwj on 2017/11/12.
 */
public interface IClientDetailsDAO extends BaseDAO<ClientDetailsDO> {

     List<ClientDetailsDO> findAll(ClientDetailsDO clientDetailsDO);

}
