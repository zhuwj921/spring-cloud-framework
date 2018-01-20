package com.cloud.zhuwj.authorization.service;



import com.cloud.zhuwj.authorization.ClientDetailsDO;

import java.util.List;

/**
 * Created by zhuwj on 2018/1/16.
 */
public interface IClientDetailsService {

    public ClientDetailsDO findByClientId(String clientId) ;

    public List<ClientDetailsDO> findAll(ClientDetailsDO clientDetails);
}
