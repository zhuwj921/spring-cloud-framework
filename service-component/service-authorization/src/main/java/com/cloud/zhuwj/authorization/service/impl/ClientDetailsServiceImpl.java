package com.cloud.zhuwj.authorization.service.impl;

import com.cloud.zhuwj.authorization.ClientDetailsDO;
import com.cloud.zhuwj.authorization.dao.IClientDetailsDAO;
import com.cloud.zhuwj.authorization.service.IClientDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zhuwj on 2017/11/12.
 */

@Service
public class ClientDetailsServiceImpl implements IClientDetailsService {


    @Autowired
    private IClientDetailsDAO clientDetailsDAO;

    @Override
    public ClientDetailsDO findByClientId(String clientId) {
        ClientDetailsDO clientDetails =new ClientDetailsDO();
        clientDetails.setClientId(clientId);
        List<ClientDetailsDO> list = clientDetailsDAO.findAll(clientDetails);
        return list.isEmpty()? null:list.get(0);
    }

    @Override
    public List<ClientDetailsDO> findAll(ClientDetailsDO clientDetails) {
        List<ClientDetailsDO> list = clientDetailsDAO.findAll(clientDetails);
        return list;
    }
}
