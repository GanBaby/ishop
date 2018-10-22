package com.ishop.service.goods;

import com.ishop.pojo.TcGoodsCats;

import java.util.List;
import java.util.Map;

/**
 * Created by 甘银道 on 2018/10/16
 */
public interface TcGoodsCatsService {

    /**
     * 根据商品分类id的数组获取商品分类名称列表
     * @param catArr 商品分类id数组
     * @return 返回获取的商品分类集合
     */
    List<String> selectCatNames(String[] catArr);

    /**
     * 根据商品的分类级别获取数据集合
     * @param floor 楼层
     * @return 返回获取的数据
     */
    List<Map<String,String>> selectCatByFloor(String floor);

    /**
     * 根据父分类的id查询所有的子分类
     * @param parentId 父分类的id
     * @return 返回获取的子分类集合
     */
    List<Map<String,String>> selectByParentId(String parentId);

}
