package com.dbing.sso.service;

import com.dbing.common.pojo.TokenInfo;

public interface TokenUtils {


    // 存储临时令牌到redis中，存活期60秒
     public void setToken(String tokenId, String tokenInfo);


    // 根据token键取TokenInfo
    public String getToken(String tokenId);


    // 删除某个 token键值
    public void delToken(String tokenId);


}
