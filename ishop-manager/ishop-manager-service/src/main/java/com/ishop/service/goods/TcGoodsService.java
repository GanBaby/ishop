package com.ishop.service.goods;

import com.ishop.pojo.TcGoods;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface TcGoodsService {
    /**
     * 获取所有商品列表
     * @return 返回获取的商品列表
     */
    List<Map<String,Object>> selectList(String goodsName);

    /**
     * 根据商品的id获取商品信息
     * @param goodsId 查询的商品的id
     * @return 返回获取的商品信息
     */
    TcGoods selectById(String goodsId);

    /**
     * 根据商品id删除商品
     * @param id 删除的商品id
     * @return 返回删除的结果
     */
    boolean deleteById(String id);

    /**
     * 获取商品之前获取商品信息的方法
     * @param goodsId 商品id
     * @return 返回获取的信息数据
     */
    Map<String,Object> editBefore(String goodsId);

    /**
     * 根据商品id来修改商品上下架状态
     * @Param goodsId 商品id
     *         status  待修改的状态
     * @return 返回修改的结果
     */
    boolean editGoodsSale(String goodsId,String status );

    /**
     * 根据商品id来修改商品推荐状态
     * @Param goodsId 商品id
     *         status  待修改的状态
     * @return 返回修改的结果
     */
    boolean editGoodsRecom(String goodsId,String status );

}
