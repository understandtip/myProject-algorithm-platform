package com.project.service;

import com.project.domain.User;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public interface UserService {

    /**
     * 登录方法
     * @param username
     * @param password
     * @return
     */
    User login(String username, String password);


    /**
     * 根据用户名和密码查询用户对象
     * @param username
     * @param password
     * @return
     */
    User select(String username,String password);

    /**
     * 根据用户名查询用户对象
     * @param username
     * @return
     */
    User selectByUsername(String username);

    /**
     * 添加用户
     * @param user
     */
    void add(User user);

    /**
     * 注册方法
     * @return
     */
    boolean register(User user);
}
