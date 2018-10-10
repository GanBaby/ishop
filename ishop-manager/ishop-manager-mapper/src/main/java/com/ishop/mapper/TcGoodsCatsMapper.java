package com.ishop.mapper;

import com.ishop.pojo.TcGoodsCats;
import org.apache.ibatis.annotations.Param;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface TcGoodsCatsMapper extends Mapper<TcGoodsCats> {

    /**
     * 根据一级分类获取二级分类
     * @param parentId 一级分类
     * @return 返回获取的二级分类
     */
    List<TcGoodsCats> selectByParentId(@Param(value="parentId") int parentId);

}