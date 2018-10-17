package com.ishop.service.goods.Impl;

import com.ishop.pojo.TcGoods;
import com.ishop.service.goods.TcGoodsService;
import com.ishop.warpper.TcGoodsWarpper;
import org.springframework.stereotype.Service;
import com.ishop.mapper.TcGoodsMapper;


import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service(value = "tcGoodsService")
public class TcGoodsServiceImpl implements TcGoodsService{

        @Resource
        private TcGoodsMapper tcGoodsMapper;

        /**
         * 获取所有商品列表
         * @return 返回获取的商品列表
         */
        public List<Map<String,Object>> selectList(String goodsName) {
            List<TcGoods> list = tcGoodsMapper.selectList(goodsName);
            List<Map<String,Object>> resultList =  (List<Map<String,Object>>)new TcGoodsWarpper(list).warp();
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
    public boolean editGoodsSale(String goodsId, String status) {
        boolean flg = tcGoodsMapper.editGoodsSale(goodsId, status);
        return flg;
    }

     /**
     * 根据商品id来修改商品推荐状态
     * @Param goodsId 商品id
     *         status  待修改的状态
     * @return 返回修改的结果
     */
    public boolean editGoodsRecom(String goodsId,String status ){
        boolean flg = tcGoodsMapper.editGoodsRecom(goodsId, status);
        return flg;
    }
}

