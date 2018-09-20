package com.ishop.warpper;

import com.ishop.pojo.TcUsers;
import com.ishop.utils.pojo.BaseWarpper;

import java.util.List;
import java.util.Map;


/**
 * 用户的包装类
 * Created by 甘银道 on 2018/9/19
 */
public class TcUserWarpper extends BaseWarpper {

    public TcUserWarpper(List<TcUsers> list){
        super(list);
    }


    @Override
    protected void warpTheMap(Map<String, Object> map) {
        map.put("userType",map.get("userType").equals("0")?"普通会员":"门店用户");
        map.put("userSex",map.get("userSex").equals("1")?"男":"女");
        map.put("userStatus",map.get("userStatus").equals("0")?"禁用":"启用");
    }
}
