package com.ishop.service.goods.Impl;

import com.ishop.pojo.TcGoods;
import com.ishop.service.goods.TcGoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ishop.mapper.TcGoodsMapper;

import javax.annotation.Resource;
import java.util.List;
@Service
public class TcGoodsServiceImpl implements TcGoodsService{

        @Resource
        private TcGoodsMapper tcGoodsMapper;

        /**
         * 获取所有商品列表
         * @return 返回获取的商品列表
         */
        public List<TcGoods> selectList(String goodsName) {
            List<TcGoods> resultList = tcGoodsMapper.selectList(goodsName);
            return resultList;
        }

        /**
         * 根据商品id删除商品
         * @param id 删除的商品id
         * @return 返回删除的结果
         */
        public boolean deleteById(String id) {
            TcGoods goods = new TcGoods();
            boolean flg = tcGoodsMapper.deleteByGoodsId(id);
            return flg;
        }


    /**
     * 根据商品id来修改商品上下架状态
     * @Param goodsId 商品id
     *         status  待修改的状态
     * @return 返回修改的结果
     */
    public boolean edisGoodsSale(String goodsId, String status) {
        boolean flg = tcGoodsMapper.edisGoodsSale(goodsId, status);
        return flg;
    }
}

