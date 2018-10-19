package com.ishop.service.goods.Impl;

import com.ishop.mapper.TcGoodsCatsMapper;
import com.ishop.pojo.TcGoodsCats;
import com.ishop.service.goods.TcGoodsCatsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

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

    /**
     * 根据商品的分类级别获取数据集合
     * @param floor 楼层
     * @return 返回获取的数据
     */
    public List<Map<String,String>> selectCatByFloor(String floor){
        List<Map<String, String>> resultList = tcGoodsCatsMapper.selectCatByFloor(floor);
        return resultList;
    };

    /**
     * 根据父分类的id查询所有的子分类
     * @param parentId 父分类的id
     * @return 返回获取的子分类集合
     */
    public List<TcGoodsCats> selectByParentId(String parentId) {
        List<TcGoodsCats> resultList = tcGoodsCatsMapper.selectByParentId(parentId);
        return resultList;
    }
}
