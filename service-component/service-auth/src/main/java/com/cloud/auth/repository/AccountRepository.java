package com.cloud.auth.repository;

import com.cloud.auth.domain.Account;
import com.cloud.common.base.BaseRepository;

/**
 * @author: zhuwj
 * @date: 2020/9/26 0:21
 * @description:
 */
public interface AccountRepository extends BaseRepository<Account> {

    Account findAccountByUsername(String username);
}
