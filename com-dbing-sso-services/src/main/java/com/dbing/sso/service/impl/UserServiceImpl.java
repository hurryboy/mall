package com.dbing.sso.service.impl;

import com.dbing.manager.pojo.User;
import com.dbing.mappers.UserMapper;
import com.dbing.sso.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    public User getUser(String userName, String password) {
        User user = new User();
        user.setUsername(userName);
        user.setPassword(password);

        List<User> users = userMapper.select(user);

        if(users!=null){
            return users.get(0);
        }

        return null;
    }
}
