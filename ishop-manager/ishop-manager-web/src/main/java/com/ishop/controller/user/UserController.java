package com.ishop.controller.user;

import com.ishop.service.TcUserService;
import com.ishop.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * 用户Controller
 * Created by 甘银道 on 2018/9/19
 */
@Controller
@RequestMapping(value = "user")
public class UserController {

    @Autowired
    private TcUserService tcUserServiceImpl;

    /**
     * 获取用户信息列表
     * @param map
     *        iDisplayStart:当前页
     *        sSearch:搜索的内容
     *        iDisplayLength:每页显示的数据量
     * @return 返回获取的数据
     */
    @RequestMapping(value="selectList")
    @ResponseBody
    public Object selectList(@RequestParam Map<String,String> map){
        String iDisplayStart = map.get("iDisplayStart");
        if(StringUtils.isBlank(iDisplayStart)){

        }

        List result = tcUserServiceImpl.selectList();
        return result;
    }

}
