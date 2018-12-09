/**
 * Copyright (C), 2018
 * FileName: UsersController
 * Author:   huangwenyuan
 * Date:     2018/12/9 21:59
 * Description:
 */

package com.hwy.web.controller;

import com.hwy.pojo.Users;
import com.hwy.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 功能描述:
 *
 * @author huangwenyuan
 * @create 2018/12/9
 * @since 1.0.0
 */
@Controller
@RequestMapping("/user")
public class UsersController {
    @Autowired
    private UsersService usersService;

    @RequestMapping("/addUser")
    public String addUser(Users users) {
        this.usersService.addUser(users);
        return "ok";
    }
}

    