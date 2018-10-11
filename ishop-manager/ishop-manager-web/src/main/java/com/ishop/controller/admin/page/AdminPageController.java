package com.ishop.controller.admin.page;

import com.ishop.utils.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 页面跳转Controller
 * Created by 甘银道 on 2018/9/17
 */
@Controller
public class AdminPageController extends BaseController{

    @RequestMapping("/admin")
    public String showAdminPage(){
        return "admin/index";
    }

}
