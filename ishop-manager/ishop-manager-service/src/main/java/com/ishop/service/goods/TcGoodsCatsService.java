package com.ishop.service.goods;

import java.util.List;

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

}
