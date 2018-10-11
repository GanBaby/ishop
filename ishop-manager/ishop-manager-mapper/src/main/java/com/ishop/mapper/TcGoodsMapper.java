package com.ishop.mapper;

import com.ishop.pojo.TcGoods;
import org.apache.ibatis.annotations.Param;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface TcGoodsMapper extends Mapper<TcGoods> {

    /**
     * 根据一级分类id模糊查询热销商品
     * @param oneCatId 一级分类id
     * @return 返回获取的热销商品集合
     */
    List<TcGoods> getRecomGoodsLikeOneCatId(@Param(value="oneCatId") int oneCatId);

    boolean deleteByGoodsId(@Param(value="goodsId") String goodsId);

}