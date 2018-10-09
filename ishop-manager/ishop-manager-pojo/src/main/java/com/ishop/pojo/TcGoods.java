package com.ishop.pojo;

import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.*;

@Table(name = "tc_goods")
public class TcGoods {
    @Id
    @Column(name = "goodsId")
    private Integer goodsid;

    /**
     * 商品编号
     */
    @Column(name = "goodsSn")
    private String goodssn;

    /**
     * 商品货号
     */
    @Column(name = "productNo")
    private String productno;

    /**
     * 商品名称
     */
    @Column(name = "goodsName")
    private String goodsname;

    /**
     * 商品图片
     */
    @Column(name = "goodsImg")
    private String goodsimg;

    /**
     * 门店id
     */
    @Column(name = "shopId")
    private Integer shopid;

    /**
     * 市场价
     */
    @Column(name = "marketPrice")
    private BigDecimal marketprice;

    /**
     * 门店价
     */
    @Column(name = "shopPrice")
    private BigDecimal shopprice;

    /**
     * 预警库存
     */
    @Column(name = "warnStock")
    private Integer warnstock;

    /**
     * 商品总库存·
     */
    @Column(name = "goodsStock")
    private Integer goodsstock;

    /**
     * 单价
     */
    @Column(name = "goodsUnit")
    private String goodsunit;

    /**
     * 是否上架	0:不上架 1:上架
     */
    @Column(name = "isSale")
    private Byte issale;

    /**
     * 是否精品	0:否 1:是
     */
    @Column(name = "isBest")
    private Byte isbest;

    /**
     * 是否热销产品	0:否 1:是
     */
    @Column(name = "isHot")
    private Byte ishot;

    /**
     * 是否新品	0:否 1:是
     */
    @Column(name = "isNew")
    private Byte isnew;

    /**
     * 是否推荐	0:否 1:是
     */
    @Column(name = "isRecom")
    private Byte isrecom;

    /**
     * 商品分类ID路径	catId1_catId2_catId3
     */
    @Column(name = "goodsCatIdPath")
    private String goodscatidpath;

    /**
     * 最后一级商品分类ID
     */
    @Column(name = "goodsCatId")
    private Integer goodscatid;

    /**
     * 门店商品分类第一级ID
     */
    @Column(name = "shopCatId1")
    private Integer shopcatid1;

    /**
     * 门店商品第二级分类ID
     */
    @Column(name = "shopCatId2")
    private Integer shopcatid2;

    /**
     * 品牌Id
     */
    @Column(name = "brandId")
    private Integer brandid;

    /**
     * 商品状态	-1:违规 0:未审核 1:已审核
     */
    @Column(name = "goodsStatus")
    private Byte goodsstatus;

    /**
     * 总销售量
     */
    @Column(name = "saleNum")
    private Integer salenum;

    /**
     * 	上架时间
     */
    @Column(name = "saleTime")
    private Date saletime;

    /**
     * 访问数
     */
    @Column(name = "visitNum")
    private Integer visitnum;

    /**
     * 评价数
     */
    @Column(name = "appraiseNum")
    private Integer appraisenum;

    /**
     * 是否有规格	0:没有 1:有
     */
    @Column(name = "isSpec")
    private Byte isspec;

    /**
     * 商品SEO关键字
     */
    @Column(name = "goodsSeoKeywords")
    private String goodsseokeywords;

    /**
     * 状态说明	一般用于说明拒绝原因
     */
    @Column(name = "illegalRemarks")
    private String illegalremarks;

    /**
     * 删除标志	-1:删除 1:有效
     */
    @Column(name = "dataFlag")
    private Byte dataflag;

    /**
     * 创建时间
     */
    @Column(name = "createTime")
    private Date createtime;

    /**
     * 促销信息
     */
    @Column(name = "goodsTips")
    private String goodstips;

    /**
     * 	商品描述
     */
    @Column(name = "goodsDesc")
    private String goodsdesc;

    /**
     * 商品相册
     */
    private String gallery;

    /**
     * @return goodsId
     */
    public Integer getGoodsid() {
        return goodsid;
    }

    /**
     * @param goodsid
     */
    public void setGoodsid(Integer goodsid) {
        this.goodsid = goodsid;
    }

    /**
     * 获取商品编号
     *
     * @return goodsSn - 商品编号
     */
    public String getGoodssn() {
        return goodssn;
    }

    /**
     * 设置商品编号
     *
     * @param goodssn 商品编号
     */
    public void setGoodssn(String goodssn) {
        this.goodssn = goodssn == null ? null : goodssn.trim();
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
     * 获取商品名称
     *
     * @return goodsName - 商品名称
     */
    public String getGoodsname() {
        return goodsname;
    }

    /**
     * 设置商品名称
     *
     * @param goodsname 商品名称
     */
    public void setGoodsname(String goodsname) {
        this.goodsname = goodsname == null ? null : goodsname.trim();
    }

    /**
     * 获取商品图片
     *
     * @return goodsImg - 商品图片
     */
    public String getGoodsimg() {
        return goodsimg;
    }

    /**
     * 设置商品图片
     *
     * @param goodsimg 商品图片
     */
    public void setGoodsimg(String goodsimg) {
        this.goodsimg = goodsimg == null ? null : goodsimg.trim();
    }

    /**
     * 获取门店id
     *
     * @return shopId - 门店id
     */
    public Integer getShopid() {
        return shopid;
    }

    /**
     * 设置门店id
     *
     * @param shopid 门店id
     */
    public void setShopid(Integer shopid) {
        this.shopid = shopid;
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
     * 获取门店价
     *
     * @return shopPrice - 门店价
     */
    public BigDecimal getShopprice() {
        return shopprice;
    }

    /**
     * 设置门店价
     *
     * @param shopprice 门店价
     */
    public void setShopprice(BigDecimal shopprice) {
        this.shopprice = shopprice;
    }

    /**
     * 获取预警库存
     *
     * @return warnStock - 预警库存
     */
    public Integer getWarnstock() {
        return warnstock;
    }

    /**
     * 设置预警库存
     *
     * @param warnstock 预警库存
     */
    public void setWarnstock(Integer warnstock) {
        this.warnstock = warnstock;
    }

    /**
     * 获取商品总库存·
     *
     * @return goodsStock - 商品总库存·
     */
    public Integer getGoodsstock() {
        return goodsstock;
    }

    /**
     * 设置商品总库存·
     *
     * @param goodsstock 商品总库存·
     */
    public void setGoodsstock(Integer goodsstock) {
        this.goodsstock = goodsstock;
    }

    /**
     * 获取单价
     *
     * @return goodsUnit - 单价
     */
    public String getGoodsunit() {
        return goodsunit;
    }

    /**
     * 设置单价
     *
     * @param goodsunit 单价
     */
    public void setGoodsunit(String goodsunit) {
        this.goodsunit = goodsunit == null ? null : goodsunit.trim();
    }

    /**
     * 获取是否上架	0:不上架 1:上架
     *
     * @return isSale - 是否上架	0:不上架 1:上架
     */
    public Byte getIssale() {
        return issale;
    }

    /**
     * 设置是否上架	0:不上架 1:上架
     *
     * @param issale 是否上架	0:不上架 1:上架
     */
    public void setIssale(Byte issale) {
        this.issale = issale;
    }

    /**
     * 获取是否精品	0:否 1:是
     *
     * @return isBest - 是否精品	0:否 1:是
     */
    public Byte getIsbest() {
        return isbest;
    }

    /**
     * 设置是否精品	0:否 1:是
     *
     * @param isbest 是否精品	0:否 1:是
     */
    public void setIsbest(Byte isbest) {
        this.isbest = isbest;
    }

    /**
     * 获取是否热销产品	0:否 1:是
     *
     * @return isHot - 是否热销产品	0:否 1:是
     */
    public Byte getIshot() {
        return ishot;
    }

    /**
     * 设置是否热销产品	0:否 1:是
     *
     * @param ishot 是否热销产品	0:否 1:是
     */
    public void setIshot(Byte ishot) {
        this.ishot = ishot;
    }

    /**
     * 获取是否新品	0:否 1:是
     *
     * @return isNew - 是否新品	0:否 1:是
     */
    public Byte getIsnew() {
        return isnew;
    }

    /**
     * 设置是否新品	0:否 1:是
     *
     * @param isnew 是否新品	0:否 1:是
     */
    public void setIsnew(Byte isnew) {
        this.isnew = isnew;
    }

    /**
     * 获取是否推荐	0:否 1:是
     *
     * @return isRecom - 是否推荐	0:否 1:是
     */
    public Byte getIsrecom() {
        return isrecom;
    }

    /**
     * 设置是否推荐	0:否 1:是
     *
     * @param isrecom 是否推荐	0:否 1:是
     */
    public void setIsrecom(Byte isrecom) {
        this.isrecom = isrecom;
    }

    /**
     * 获取商品分类ID路径	catId1_catId2_catId3
     *
     * @return goodsCatIdPath - 商品分类ID路径	catId1_catId2_catId3
     */
    public String getGoodscatidpath() {
        return goodscatidpath;
    }

    /**
     * 设置商品分类ID路径	catId1_catId2_catId3
     *
     * @param goodscatidpath 商品分类ID路径	catId1_catId2_catId3
     */
    public void setGoodscatidpath(String goodscatidpath) {
        this.goodscatidpath = goodscatidpath == null ? null : goodscatidpath.trim();
    }

    /**
     * 获取最后一级商品分类ID
     *
     * @return goodsCatId - 最后一级商品分类ID
     */
    public Integer getGoodscatid() {
        return goodscatid;
    }

    /**
     * 设置最后一级商品分类ID
     *
     * @param goodscatid 最后一级商品分类ID
     */
    public void setGoodscatid(Integer goodscatid) {
        this.goodscatid = goodscatid;
    }

    /**
     * 获取门店商品分类第一级ID
     *
     * @return shopCatId1 - 门店商品分类第一级ID
     */
    public Integer getShopcatid1() {
        return shopcatid1;
    }

    /**
     * 设置门店商品分类第一级ID
     *
     * @param shopcatid1 门店商品分类第一级ID
     */
    public void setShopcatid1(Integer shopcatid1) {
        this.shopcatid1 = shopcatid1;
    }

    /**
     * 获取门店商品第二级分类ID
     *
     * @return shopCatId2 - 门店商品第二级分类ID
     */
    public Integer getShopcatid2() {
        return shopcatid2;
    }

    /**
     * 设置门店商品第二级分类ID
     *
     * @param shopcatid2 门店商品第二级分类ID
     */
    public void setShopcatid2(Integer shopcatid2) {
        this.shopcatid2 = shopcatid2;
    }

    /**
     * 获取品牌Id
     *
     * @return brandId - 品牌Id
     */
    public Integer getBrandid() {
        return brandid;
    }

    /**
     * 设置品牌Id
     *
     * @param brandid 品牌Id
     */
    public void setBrandid(Integer brandid) {
        this.brandid = brandid;
    }

    /**
     * 获取商品状态	-1:违规 0:未审核 1:已审核
     *
     * @return goodsStatus - 商品状态	-1:违规 0:未审核 1:已审核
     */
    public Byte getGoodsstatus() {
        return goodsstatus;
    }

    /**
     * 设置商品状态	-1:违规 0:未审核 1:已审核
     *
     * @param goodsstatus 商品状态	-1:违规 0:未审核 1:已审核
     */
    public void setGoodsstatus(Byte goodsstatus) {
        this.goodsstatus = goodsstatus;
    }

    /**
     * 获取总销售量
     *
     * @return saleNum - 总销售量
     */
    public Integer getSalenum() {
        return salenum;
    }

    /**
     * 设置总销售量
     *
     * @param salenum 总销售量
     */
    public void setSalenum(Integer salenum) {
        this.salenum = salenum;
    }

    /**
     * 获取	上架时间
     *
     * @return saleTime - 	上架时间
     */
    public Date getSaletime() {
        return saletime;
    }

    /**
     * 设置	上架时间
     *
     * @param saletime 	上架时间
     */
    public void setSaletime(Date saletime) {
        this.saletime = saletime;
    }

    /**
     * 获取访问数
     *
     * @return visitNum - 访问数
     */
    public Integer getVisitnum() {
        return visitnum;
    }

    /**
     * 设置访问数
     *
     * @param visitnum 访问数
     */
    public void setVisitnum(Integer visitnum) {
        this.visitnum = visitnum;
    }

    /**
     * 获取评价数
     *
     * @return appraiseNum - 评价数
     */
    public Integer getAppraisenum() {
        return appraisenum;
    }

    /**
     * 设置评价数
     *
     * @param appraisenum 评价数
     */
    public void setAppraisenum(Integer appraisenum) {
        this.appraisenum = appraisenum;
    }

    /**
     * 获取是否有规格	0:没有 1:有
     *
     * @return isSpec - 是否有规格	0:没有 1:有
     */
    public Byte getIsspec() {
        return isspec;
    }

    /**
     * 设置是否有规格	0:没有 1:有
     *
     * @param isspec 是否有规格	0:没有 1:有
     */
    public void setIsspec(Byte isspec) {
        this.isspec = isspec;
    }

    /**
     * 获取商品SEO关键字
     *
     * @return goodsSeoKeywords - 商品SEO关键字
     */
    public String getGoodsseokeywords() {
        return goodsseokeywords;
    }

    /**
     * 设置商品SEO关键字
     *
     * @param goodsseokeywords 商品SEO关键字
     */
    public void setGoodsseokeywords(String goodsseokeywords) {
        this.goodsseokeywords = goodsseokeywords == null ? null : goodsseokeywords.trim();
    }

    /**
     * 获取状态说明	一般用于说明拒绝原因
     *
     * @return illegalRemarks - 状态说明	一般用于说明拒绝原因
     */
    public String getIllegalremarks() {
        return illegalremarks;
    }

    /**
     * 设置状态说明	一般用于说明拒绝原因
     *
     * @param illegalremarks 状态说明	一般用于说明拒绝原因
     */
    public void setIllegalremarks(String illegalremarks) {
        this.illegalremarks = illegalremarks == null ? null : illegalremarks.trim();
    }

    /**
     * 获取删除标志	-1:删除 1:有效
     *
     * @return dataFlag - 删除标志	-1:删除 1:有效
     */
    public Byte getDataflag() {
        return dataflag;
    }

    /**
     * 设置删除标志	-1:删除 1:有效
     *
     * @param dataflag 删除标志	-1:删除 1:有效
     */
    public void setDataflag(Byte dataflag) {
        this.dataflag = dataflag;
    }

    /**
     * 获取创建时间
     *
     * @return createTime - 创建时间
     */
    public Date getCreatetime() {
        return createtime;
    }

    /**
     * 设置创建时间
     *
     * @param createtime 创建时间
     */
    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    /**
     * 获取促销信息
     *
     * @return goodsTips - 促销信息
     */
    public String getGoodstips() {
        return goodstips;
    }

    /**
     * 设置促销信息
     *
     * @param goodstips 促销信息
     */
    public void setGoodstips(String goodstips) {
        this.goodstips = goodstips == null ? null : goodstips.trim();
    }

    /**
     * 获取	商品描述
     *
     * @return goodsDesc - 	商品描述
     */
    public String getGoodsdesc() {
        return goodsdesc;
    }

    /**
     * 设置	商品描述
     *
     * @param goodsdesc 	商品描述
     */
    public void setGoodsdesc(String goodsdesc) {
        this.goodsdesc = goodsdesc == null ? null : goodsdesc.trim();
    }

    /**
     * 获取商品相册
     *
     * @return gallery - 商品相册
     */
    public String getGallery() {
        return gallery;
    }

    /**
     * 设置商品相册
     *
     * @param gallery 商品相册
     */
    public void setGallery(String gallery) {
        this.gallery = gallery == null ? null : gallery.trim();
    }
}