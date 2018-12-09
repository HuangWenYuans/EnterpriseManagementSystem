/**
 * Copyright (C), 2018
 * FileName: Demo1Test
 * Author:   huangwenyuan
 * Date:     2018/12/9 20:01
 * Description:
 */

package com.hwy.test;

import com.hwy.mapper.UsersMapper;
import com.hwy.pojo.Users;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * 功能描述:
 *
 * @author huangwenyuan
 * @create 2018/12/9
 * @since 1.0.0
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/applicationContext-dao.xml")
public class Demo1Test {
    @Autowired
    private UsersMapper usersMapper;

    @Test
    public void insertUserTest() {
        Users users = new Users();
        users.setAge(20);
        users.setName("admin");
        this.usersMapper.insertUser(users);
    }
}

    