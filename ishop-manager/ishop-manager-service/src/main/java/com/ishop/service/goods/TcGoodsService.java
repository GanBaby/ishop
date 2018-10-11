package com.ishop.service.goods;

import com.ishop.pojo.TcGoods;

import java.util.List;

public interface TcGoodsService {
    /**
     * 获取所有商品列表
     * @return 返回获取的商品列表
     */
    List<TcGoods> selectList();

    /**
     * 根据商品id删除商品
     * @param id 删除的商品id
     * @return 返回删除的结果
     */
    boolean deleteById(String id);

}
