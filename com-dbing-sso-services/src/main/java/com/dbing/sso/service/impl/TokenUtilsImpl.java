package com.dbing.sso.service.impl;

import com.dbing.common.pojo.TokenInfo;
import com.dbing.sso.service.RedisService;
import com.dbing.sso.service.TokenUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TokenUtilsImpl implements TokenUtils {

    @Autowired
    RedisService redisService;

    @Override
    public void setToken(String tokenId, String tokenInfo) {
        redisService.set(tokenId,tokenInfo);
    }

    @Override
    public String getToken(String tokenId) {
        String tokenInfo = redisService.get(tokenId);
        return tokenInfo;
    }

    @Override
    public void delToken(String tokenId) {
        redisService.del(tokenId);
    }
}
