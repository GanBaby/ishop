package com.ishop.pojo;

import java.math.BigDecimal;
import javax.persistence.*;

@Table(name = "tc_goods_specs")
public class TcGoodsSpecs {
    /**
     * 自增ID
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 店铺ID
     */
    @Column(name = "shopId")
    private Integer shopid;

    /**
     * 商品ID
     */
    @Column(name = "goodsId")
    private Integer goodsid;

    /**
     * 商品货号
     */
    @Column(name = "productNo")
    private String productno;

    /**
     * 规格ID格式  例如：specId:specId:specId:specId:specId
     */
    @Column(name = "specIds")
    private String specids;

    /**
     * 市场价
     */
    @Column(name = "marketPrice")
    private BigDecimal marketprice;

    /**
     * 商品价
     */
    @Column(name = "specPrice")
    private BigDecimal specprice;

    /**
     * 库存
     */
    @Column(name = "specStock")
    private Integer specstock;

    /**
     * 预警值
     */
    @Column(name = "warnStock")
    private Integer warnstock;

    /**
     * 销量
     */
    @Column(name = "saleNum")
    private Integer salenum;

    /**
     * 默认规格	1：默认规格 0：非默认规格
     */
    @Column(name = "isDefault")
    private Byte isdefault;

    /**
     * 有效状态	1:有效 -1:无效
     */
    @Column(name = "dataFlag")
    private Byte dataflag;

    /**
     * 获取自增ID
     *
     * @return id - 自增ID
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置自增ID
     *
     * @param id 自增ID
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取店铺ID
     *
     * @return shopId - 店铺ID
     */
    public Integer getShopid() {
        return shopid;
    }

    /**
     * 设置店铺ID
     *
     * @param shopid 店铺ID
     */
    public void setShopid(Integer shopid) {
        this.shopid = shopid;
    }

    /**
     * 获取商品ID
     *
     * @return goodsId - 商品ID
     */
    public Integer getGoodsid() {
        return goodsid;
    }

    /**
     * 设置商品ID
     *
     * @param goodsid 商品ID
     */
    public void setGoodsid(Integer goodsid) {
        this.goodsid = goodsid;
    }

    /**
     * 获取商品货号
     *
     * @return productNo - 商品货号
     */
    public String getProductno() {
        return productno;
    }

    /**
     * 设置商品货号
     *
     * @param productno 商品货号
     */
    public void setProductno(String productno) {
        this.productno = productno == null ? null : productno.trim();
    }

    /**
     * 获取规格ID格式  例如：specId:specId:specId:specId:specId
     *
     * @return specIds - 规格ID格式  例如：specId:specId:specId:specId:specId
     */
    public String getSpecids() {
        return specids;
    }

    /**
     * 设置规格ID格式  例如：specId:specId:specId:specId:specId
     *
     * @param specids 规格ID格式  例如：specId:specId:specId:specId:specId
     */
    public void setSpecids(String specids) {
        this.specids = specids == null ? null : specids.trim();
    }

    /**
     * 获取市场价
     *
     * @return marketPrice - 市场价
     */
    public BigDecimal getMarketprice() {
        return marketprice;
    }

    /**
     * 设置市场价
     *
     * @param marketprice 市场价
     */
    public void setMarketprice(BigDecimal marketprice) {
        this.marketprice = marketprice;
    }

    /**
     * 获取商品价
     *
     * @return specPrice - 商品价
     */
    public BigDecimal getSpecprice() {
        return specprice;
    }

    /**
     * 设置商品价
     *
     * @param specprice 商品价
     */
    public void setSpecprice(BigDecimal specprice) {
        this.specprice = specprice;
    }

    /**
     * 获取库存
     *
     * @return specStock - 库存
     */
    public Integer getSpecstock() {
        return specstock;
    }

    /**
     * 设置库存
     *
     * @param specstock 库存
     */
    public void setSpecstock(Integer specstock) {
        this.specstock = specstock;
    }

    /**
     * 获取预警值
     *
     * @return warnStock - 预警值
     */
    public Integer getWarnstock() {
        return warnstock;
    }

    /**
     * 设置预警值
     *
     * @param warnstock 预警值
     */
    public void setWarnstock(Integer warnstock) {
        this.warnstock = warnstock;
    }

    /**
     * 获取销量
     *
     * @return saleNum - 销量
     */
    public Integer getSalenum() {
        return salenum;
    }

    /**
     * 设置销量
     *
     * @param salenum 销量
     */
    public void setSalenum(Integer salenum) {
        this.salenum = salenum;
    }

    /**
     * 获取默认规格	1：默认规格 0：非默认规格
     *
     * @return isDefault - 默认规格	1：默认规格 0：非默认规格
     */
    public Byte getIsdefault() {
        return isdefault;
    }

    /**
     * 设置默认规格	1：默认规格 0：非默认规格
     *
     * @param isdefault 默认规格	1：默认规格 0：非默认规格
     */
    public void setIsdefault(Byte isdefault) {
        this.isdefault = isdefault;
    }

    /**
     * 获取有效状态	1:有效 -1:无效
     *
     * @return dataFlag - 有效状态	1:有效 -1:无效
     */
    public Byte getDataflag() {
        return dataflag;
    }

    /**
     * 设置有效状态	1:有效 -1:无效
     *
     * @param dataflag 有效状态	1:有效 -1:无效
     */
    public void setDataflag(Byte dataflag) {
        this.dataflag = dataflag;
    }
}