package com.ishop.service.goods.Impl;

import com.ishop.mapper.TcGoodsCatsMapper;
import com.ishop.service.goods.TcGoodsCatsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by 甘银道 on 2018/10/16
 */
@Service("tcGoodsCatsService")
public class TcGoodsCatsServiceImpl implements TcGoodsCatsService {

    @Resource
    private TcGoodsCatsMapper tcGoodsCatsMapper;

    /**
     * 根据商品分类id的数组获取商品分类名称列表
     * @param catArr 商品分类id数组
     * @return 返回获取的商品分类集合
     */
    public List<String> selectCatNames(String[] catArr) {
        List<String> resultList  = tcGoodsCatsMapper.selectCatNames(catArr);
        return resultList;
    }
}
