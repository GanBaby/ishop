package com.ishop.service.page.impl;

import com.ishop.mapper.TcGoodsCatsMapper;
import com.ishop.mapper.TcGoodsMapper;
import com.ishop.mapper.TcGoodsParentCatsDetailsMapper;
import com.ishop.pojo.TcGoods;
import com.ishop.pojo.TcGoodsCats;
import com.ishop.pojo.TcGoodsParentCatsDetails;
import com.ishop.service.page.PageService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Created by 甘银道 on 2018/10/9
 */
@Service
public class PageServiceImpl implements PageService {


    @Resource
    private TcGoodsParentCatsDetailsMapper tcGoodsParentCatsDetailsMapper;
    @Resource
    private TcGoodsCatsMapper tcGoodsCatsMapper;
    @Resource
    private TcGoodsMapper tcGoodsMapper;

    /**
     * 获取首页要展示的内容
     * @return 返回获取的内容数据
     */
    public List<Map<String, Object>> getIndexData() {
        //获取所有父分类详情内容数据列表
        List<TcGoodsParentCatsDetails> parentCatsDetailsList = tcGoodsParentCatsDetailsMapper.selectAll();
        //创建封装数据用的List集合
        List<Map<String,Object>> resultList = new ArrayList<>();
        parentCatsDetailsList.forEach((item)->{
            Map<String,Object> map = new ConcurrentHashMap<>();
            map.put("parentCatsDetails",item);
            //根据id获取二级分类数据列表
            List<TcGoodsCats> goodsCats = tcGoodsCatsMapper.selectByParentId(item.getCatId());
            map.put("goodsCats",goodsCats);
            //获取推荐商品
            List<TcGoods> goods = tcGoodsMapper.getRecomGoodsLikeOneCatId(item.getCatId());
            map.put("goods",goods);
            resultList.add(map);
        });
        return resultList;
    }
}
