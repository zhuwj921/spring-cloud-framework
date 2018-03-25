package com.cloud.zhuwj.authorization.security;

import com.cloud.zhuwj.user.domain.UserDO;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import java.util.Collection;
import java.util.HashSet;

/**
 * @author zhuwj
 * @version V1.0
 * @Description: oauth用户实现
 * @date 2018/1/16.
 */
public class SecurityUserDetailsServiceImpl implements UserDetailsService {


    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        String lowcaseUsername = username.toLowerCase();
        Collection<GrantedAuthority> grantedAuthorities = new HashSet<>();
        grantedAuthorities.add(new SimpleGrantedAuthority("findclient"));
        UserDO userDO = new UserDO(1,"system","123456",grantedAuthorities,true);
        return userDO;
    }
}
