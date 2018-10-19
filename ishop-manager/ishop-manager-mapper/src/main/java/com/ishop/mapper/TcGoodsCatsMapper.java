package com.ishop.mapper;

import com.ishop.pojo.TcGoodsCats;
import org.apache.ibatis.annotations.Param;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;
import java.util.Map;

public interface TcGoodsCatsMapper extends Mapper<TcGoodsCats> {

    /**
     * 根据一级分类获取二级分类
     * @param parentId 一级分类
     * @return 返回获取的二级分类
     */
    List<TcGoodsCats> selectByParentId(@Param(value="parentId") String parentId);

    /**
     * 根据商品分类id的数组获取商品分类名称列表
     * @param catArr 商品分类id数组
     * @return 返回获取的商品分类数组
     */
    List<String> selectCatNames(@Param(value="catArr")String[] catArr);

    /**
     * 根据商品的分类级别获取数据集合
     * @param floor 楼层
     * @return 返回获取的数据
     */
    List<Map<String,String>> selectCatByFloor(@Param(value="floor") String floor);

}