/**
 * Copyright (C), 2018
 * FileName: UsersServiceImpl
 * Author:   huangwenyuan
 * Date:     2018/12/9 22:02
 * Description:
 */

package com.hwy.service.impl;

import com.hwy.mapper.UsersMapper;
import com.hwy.pojo.Users;
import com.hwy.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 功能描述:
 *
 * @author huangwenyuan
 * @create 2018/12/9
 * @since 1.0.0
 */
@Service
public class UsersServiceImpl implements UsersService {
    @Autowired
    private UsersMapper usersMapper;

    @Override
    public void addUser(Users users) {
        this.usersMapper.insertUser(users);

    }
}

    