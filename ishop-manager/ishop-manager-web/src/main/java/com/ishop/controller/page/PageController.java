package com.ishop.controller.page;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 页面跳转Controller
 * Created by 甘银道 on 2018/9/17
 */
@Controller
public class PageController {

    @RequestMapping("/")
    public String showAdminPage(){
        return "admin/index";
    }

}