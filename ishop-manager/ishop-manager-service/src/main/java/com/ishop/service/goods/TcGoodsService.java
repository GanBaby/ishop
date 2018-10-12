package com.ishop.service.goods;

import com.ishop.pojo.TcGoods;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TcGoodsService {
    /**
     * 获取所有商品列表
     * @return 返回获取的商品列表
     */
    List<TcGoods> selectList(String goodsName);

    /**
     * 根据商品id删除商品
     * @param id 删除的商品id
     * @return 返回删除的结果
     */
    boolean deleteById(String id);

    /**
     * 根据商品id来修改商品上下架状态
     * @Param goodsId 商品id
     *         status  待修改的状态
     * @return 返回修改的结果
     */
    boolean edisGoodsSale(String goodsId,String status );
}
