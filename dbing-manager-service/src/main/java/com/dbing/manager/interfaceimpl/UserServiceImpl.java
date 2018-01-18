package com.dbing.manager.interfaceimpl;

import com.dbing.manager.pojo.User;
import com.dbing.manager.services.UserService;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {
}
