package com.ishop.controller.admin.goods;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.ishop.pojo.TcGoods;
import com.ishop.service.goods.TcGoodsService;
import com.ishop.utils.controller.BaseController;
import com.ishop.utils.util.PageUtil;
import com.ishop.utils.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "goods")
public class GoodsController extends BaseController {
    @Autowired
   private TcGoodsService tcGoodsService;
    /*查询所有商品数据*/
    @RequestMapping(value = "select")
    @ResponseBody
    public Object selectAll(@RequestParam Map<String,String> param){
        //每页显示的数据量
        String pageSize = param.get("pageSize");
        //当前页数
        String offset = param.get("offset");
        //获取搜索的商品名称
        String nameSearch = param.get("nameSearch");
        if(StringUtils.isEmpty(pageSize)||StringUtils.isEmpty(offset)){
            return renderError("数据错误");
        }
        Page<Map<String,String>> page = PageHelper.startPage(Integer.parseInt(offset), Integer.parseInt(pageSize));
        List<Map<String,Object>> list=tcGoodsService.selectList(nameSearch);
        PageUtil pageUtil = new PageUtil(page.getTotal(), list);
        return pageUtil;
    }

    /**
     * 删除商品
     * @param goodsId 商品的id
     * @return 返回删除的结果
     */
    @RequestMapping(value = "delete")
    @ResponseBody
    public Object delete(String goodsId){
        try{
            if(StringUtils.isBlank(goodsId)){
                return renderError("删除失败");
            }
            tcGoodsService.deleteById(goodsId);

             return renderSuccess("删除成功");

        }catch(Exception e){
            return renderException(e);
        }

    }

    /**
     * 商品上下架
     * @param map
     *         goodsId 商品id
     *         status  要修改的状态
     * @return 返回商品的状态
     */
    @RequestMapping(value = "issale")
    @ResponseBody
    public Object issale(@RequestParam Map<String,String> map){
        try{
            String goodsId = map.get("goodsId");
            String status = map.get("status");

            if(StringUtils.isBlank(goodsId)||StringUtils.isBlank(status)){
                return renderError("数据有误");
            }
            tcGoodsService.editGoodsSale(goodsId,status);
            return renderSuccess();
        }catch(Exception e){
            return renderException(e);
        }
    }

    /**
     * 商品推荐
     * @param map
     *         goodsId 商品id
     *         status  要修改的状态
     * @return
     */
    @RequestMapping(value = "isrecom")
    @ResponseBody
    public Object isrecom(@RequestParam Map<String, String> map){
        try{
            String goodsId = map.get("goodsId");
            String status = map.get("status");

            if(StringUtils.isBlank(goodsId)||StringUtils.isBlank(status)){
                return renderError("数据有误");
            }
            tcGoodsService.editGoodsRecom(goodsId, status);
            return renderSuccess();
        }catch (Exception e){
            return renderException(e);
        }
    }

}
