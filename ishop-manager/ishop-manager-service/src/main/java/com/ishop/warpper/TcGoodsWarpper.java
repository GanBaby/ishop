package com.ishop.warpper;

import com.ishop.pojo.TcGoods;
import com.ishop.service.goods.TcGoodsCatsService;
import com.ishop.utils.pojo.BaseWarpper;
import com.ishop.utils.util.SpringBeanUtil;
import java.util.List;
import java.util.Map;

/**
 *  商品的包装类
 * Created by 甘银道 on 2018/10/15
 */
public class TcGoodsWarpper extends BaseWarpper{

    /**
     * 因为此类没有空的构造函数所以需要使用SpringBeanUtil来获取spring代理的bean，
     * 需要在配置文件中添加SpringBeanUtil的bean
     */
    private static TcGoodsCatsService tcGoodsCatsService = (TcGoodsCatsService)SpringBeanUtil.getBean("tcGoodsCatsService");

    public TcGoodsWarpper(Object obj){
        super(obj);
    }

    @Override
    protected void warpTheMap(Map<String, Object> map) {
        String goodsCatidPath = (String) map.get("goodsCatidPath");
        String catName = getCatName(goodsCatidPath);
        map.put("goodsCatidPath",catName);
    }

    /**
     * 将商品分类ID路径转换成商品分类名称
     * @param goodsCatidPath 要转换的商品分类路径
     * @return 返回获取的商品分类名称
     */
    private String getCatName(String goodsCatidPath){
        String[] catArr = goodsCatidPath.split("_");
        List<String> catNames = tcGoodsCatsService.selectCatNames(catArr);
        String result = "";
        for(int i=0;i<catNames.size();i++){
            result += catNames.get(i);
            if(i != catNames.size()-1){
                result += ",";
            }
        }
        return result;
    }
}
