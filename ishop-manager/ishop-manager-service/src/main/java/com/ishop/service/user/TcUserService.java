package com.ishop.service.user;

import java.util.List;
import java.util.Map;

/**
 * 用户service
 * Created by 甘银道 on 2018/9/19
 */
public interface TcUserService {

    /**
     * 查询所有会员信息集合，并把集合中的数据进行包装
     * @return 返回包装后的集合数据
     */
    public List<Map<String,Object>> selectList();

}
