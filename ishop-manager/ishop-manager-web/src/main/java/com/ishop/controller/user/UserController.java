package com.ishop.controller.user;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ishop.service.TcUserService;
import com.ishop.utils.controller.BaseController;
import com.ishop.utils.util.Message;
import com.ishop.utils.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
public class UserController extends BaseController {

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
    public Message selectList(@RequestParam Map<String,String> map){
        try{
            String iDisplayStart = map.get("iDisplayStart");
            String iDisplayLength = map.get("iDisplayLength");
            if(StringUtils.isBlank(iDisplayStart)){
                return renderError("数据错误");
            }
            if(StringUtils.isBlank(iDisplayStart)){
                return renderError("数据错误");
            }
            PageHelper.startPage(Integer.parseInt(iDisplayStart),Integer.parseInt(iDisplayLength));
            List list = tcUserServiceImpl.selectList();

            PageInfo<Map<String,String>> page = new PageInfo<>(list);
            return renderSuccess(page);
        }catch(Exception e){
            return renderException(e);
        }
    }

}
