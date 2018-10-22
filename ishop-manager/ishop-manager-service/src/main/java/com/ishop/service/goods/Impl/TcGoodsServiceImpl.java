package com.ishop.service.goods.Impl;

import com.ishop.pojo.TcGoods;
import com.ishop.pojo.TcGoodsCats;
import com.ishop.service.goods.TcGoodsCatsService;
import com.ishop.service.goods.TcGoodsService;
import com.ishop.utils.global.Global;
import com.ishop.utils.plugin.jsTree.JsTreeState;
import com.ishop.utils.plugin.jsTree.JsTreeUtil;
import com.ishop.warpper.TcGoodsWarpper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ishop.mapper.TcGoodsMapper;


import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@Service(value = "tcGoodsService")
public class TcGoodsServiceImpl implements TcGoodsService{

    @Resource
    private TcGoodsMapper tcGoodsMapper;
    @Autowired
    private TcGoodsCatsService tcGoodsCatsService;

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
     * 根据商品的id获取商品信息
     * @param goodsId 查询的商品的id
     * @return 返回获取的商品信息
     */
    public TcGoods selectById(String goodsId) {
        TcGoods goods = tcGoodsMapper.selectById(goodsId);
        return goods;
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
     * 修改商品之前获取商品信息的方法
     * @param goodsId 商品id
     * @return 返回获取的信息数据
     */
    public Map<String, Object> editBefore(String goodsId) {
        //获取商品信息
        TcGoods tcGoods = selectById(goodsId);
        List<JsTreeUtil> treeList = new ArrayList<>();
        JsTreeUtil nodeParent = new JsTreeUtil();
        nodeParent.setText("商品分类");
        //获取一级分类的数据集合
        List<Map<String, String>> oneCatList = tcGoodsCatsService.selectCatByFloor(Global.ONE_FLOOR);
        JsTreeUtil resultJsTree = initTreeData(nodeParent, oneCatList);
/*        //获取二级分类的数据集合
        List<Map<String, Object>> twoCatList = tcGoodsCatsService.selectCatByFloor(Global.TWO_FLOOR);
        //获取三级分类的数据集合
        List<Map<String, Object>> threeCatList = tcGoodsCatsService.selectCatByFloor(Global.THREE_FLOOR);*/
        //将数据放入map集合中
        Map<String,Object> resultMap = new ConcurrentHashMap<>();
        resultMap.put("tcGoods",tcGoods);
        resultMap.put("jsTreeData",resultJsTree);
/*        resultMap.put("twoCatList",twoCatList);
        resultMap.put("threeCatList",threeCatList);*/
        return resultMap;
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

    /**
     * 初始化树形节点数据
     * @param jsTreeUtil 需要初始化的树形对象数据
     * @return 返回初始化完成的树形对象数据
     */
    private JsTreeUtil initTreeData(JsTreeUtil jsTreeUtil,List<Map<String, String>> catList){

        //获取子节点对象
        List<JsTreeUtil> children = new ArrayList<>();
        //获取节点状态对象
        JsTreeState state = jsTreeUtil.getState();
        state.setOpened(false);
        state.setDisabled(false);
        state.setSelected(false);

        if( "3".equals(jsTreeUtil.getFloor())){
            jsTreeUtil.setIcon("none");
        }

        //循环将集合放进树形插件
            for(int i=0;i<catList.size();i++){
                Map<String,String> item = catList.get(i);
                JsTreeUtil treeChild = new JsTreeUtil();
                treeChild.setText(item.get("catName"));
                treeChild.setId(String.valueOf(item.get("catId")));
                treeChild.setFloor(String.valueOf(item.get("floor")));
                treeChild.setParentId(String.valueOf(item.get("parentId")));
                List<Map<String,String>> tcGoodsCats = tcGoodsCatsService.selectByParentId(String.valueOf(item.get("catId")));
                initTreeData(treeChild, tcGoodsCats);
                children.add(treeChild);
            }
        jsTreeUtil.setChildren(children);
        return jsTreeUtil;
    }

}
