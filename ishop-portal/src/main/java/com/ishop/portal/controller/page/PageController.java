package com.ishop.portal.controller.page;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 页面跳转Controller
 * Created by 甘银道 on 2018/9/17
 */
@Controller
public class PageController {

    /**
     * 打开首页
     * @return 返回首页的视图逻辑地址
     */
    @RequestMapping("/")
    public String showIndex(){
        return "index";
    }

    /**
     * 展示其它的页面
     * @param page 需要展示的页面名称（不带后缀）
     * @return 返回视图的逻辑地址
     */
    @RequestMapping("/{page}")
    public String showPage(@PathVariable String page){
        return "view/"+page;
    }

}
