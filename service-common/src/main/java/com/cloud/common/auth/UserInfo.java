package com.cloud.common.auth;

import lombok.Data;

import java.io.Serializable;

@Data
public class UserInfo implements Serializable {

    private String username;

}
