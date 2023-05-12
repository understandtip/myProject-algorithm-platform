package com.project.service.impl;

import com.project.dao.Userdao;
import com.project.domain.User;
import com.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private Userdao userdao;

    public User login(String username, String password){
        //调用方法
        User user = userdao.select(username, password);
        return  user;
    }

    /**
     * 查询用户信息
     * @param username
     * @param password
     * @return
     */
    @Override
    public User select(String username, String password) {
        //调用方法
        User user = userdao.select(username, password);

        return user;
    }

    @Override
    public User selectByUsername(String username) {
        //调用方法
        User u = userdao.selectByUsername(username);
        // 用户名不存在，添加用户
        userdao.add(u);

        return u;
    }

    @Override
    public void add(User user) {

    }

    /**
     * 注册方法
     * @return
     */
    public boolean register(User user){
        //判断用户名是否存在
        User u = userdao.selectByUsername(user.getUsername());
        if(u == null){
            // 用户名不存在，注册
            userdao.add(user);
        }
        return u == null;
    }
}
