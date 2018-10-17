package com.ishop.service.user.Impl;

import com.ishop.mapper.TcUsersMapper;
import com.ishop.pojo.TcUsers;
import com.ishop.service.user.TcUserService;
import com.ishop.warpper.TcUserWarpper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * 用户的service实现类
 * Created by 甘银道 on 2018/9/19
 */
@Service(value = "tcUserService")
public class TcUserServiceImpl implements TcUserService {

    @Resource
    private TcUsersMapper tcUsersMapper;

    /**
     * 查询所有会员信息集合，并把集合中的数据进行包装
     * @return 返回包装后的集合数据
     */
    public List<Map<String,Object>> selectList() {
       List<TcUsers> list = tcUsersMapper.selectAll();
       List<Map<String,Object>> mapsList = (List<Map<String,Object>>)new TcUserWarpper(list).warp();
       return mapsList;
    }
}
