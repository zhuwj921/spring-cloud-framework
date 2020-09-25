package com.cloud.auth.service;

import com.cloud.auth.domain.Account;
import com.cloud.common.base.BaseService;

/**
 * @author: zhuwj
 * @date: 2020/9/26 0:18
 * @description:
 */
public interface AccountService extends BaseService<Account> {

    Account findAccountByUsername(String username);
}
