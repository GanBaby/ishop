package com.ishop.controller;

import com.ishop.service.Impl.UserServiceImpl;
import com.ishop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping(value = "user")
public class UserController {

    @Autowired
    private UserService userServiceImpl;

    @RequestMapping(value="selectList")
    @ResponseBody
    public void userTest(){
        List list = userServiceImpl.selectList();
        System.out.println("成功了"+list);
    }

}
