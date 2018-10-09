package com.ishop.mapper;


import com.ishop.pojo.TcGoodsParentCatsDetails;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;
import java.util.Map;

public interface TcGoodsParentCatsDetailsMapper extends Mapper<TcGoodsParentCatsDetails> {

    /**
     * 获取所有父分类详情内容数据列表
     * @return 返回获取的所有数据列表
     */
    List<Map<String,Object>> selectList();

}