package com.ishop.service.Impl;

import com.ishop.mapper.UsersMapper;
import com.ishop.pojo.Users;
import com.ishop.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service(value = "userService")
public class UserServiceImpl implements UserService {

    @Resource
    UsersMapper usersMapper;

    public List<Users> selectList() {
        return usersMapper.selectAll();
    }
}
