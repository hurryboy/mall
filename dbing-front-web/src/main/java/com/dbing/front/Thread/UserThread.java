package com.dbing.front.Thread;

import com.dbing.manager.pojo.User;

public class UserThread {

    public static ThreadLocal<User> threadLocal = new ThreadLocal<>();

    public static User getUser(){
        return threadLocal.get();
    }

    public static void setUser(User user){
        threadLocal.set(user);
    }

}
