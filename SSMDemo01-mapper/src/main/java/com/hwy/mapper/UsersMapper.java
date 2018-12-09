package com.hwy.mapper;

import com.hwy.pojo.Users;

import java.util.List;

public interface UsersMapper {
    void insertUser(Users user);
    List<Users> selectUserAll();

}
