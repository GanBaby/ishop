package com.ishop.pojo;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import java.math.BigDecimal;
import java.util.Date;

@Table(name = "tc_goods")
public class TcGoods {
    @Id
    @Column(name = "GOODS_ID")
    private Integer goodsId;

    /**
     * 商品编号
     */
    @Column(name = "GOODS_SN")
    private String goodsSn;

    /**
     * 商品货号
     */
    @Column(name = "PRODUCT_NO")
    private String productNo;

    /**
     * 商品名称
     */
    @Column(name = "GOODS_NAME")
    private String goodsName;

    /**
     * 商品图片
     */
    @Column(name = "GOODS_IMG")
    private String goodsImg;

    /**
     * 门店id
     */
    @Column(name = "SHOP_ID")
    private Integer shopId;

    /**
     * 市场价
     */
    @Column(name = "MARKET_PRICE")
    private BigDecimal marketPrice;

    /**
     * 门店价
     */
    @Column(name = "SHOP_PRICE")
    private BigDecimal shopPrice;

    /**
     * 预警库存
     */
    @Column(name = "WARN_STOCK")
    private Integer warnStock;

    /**
     * 商品总库存·
     */
    @Column(name = "GOODS_STOCK")
    private Integer goodsStock;

    /**
     * 单位
     */
    @Column(name = "GOODS_UNIT")
    private String goodsUnit;

    /**
     * 是否上架	0:不上架 1:上架
     */
    @Column(name = "ISSALE")
    private Byte issale;

    /**
     * 是否精品	0:否 1:是
     */
    @Column(name = "ISBEST")
    private Byte isbest;

    /**
     * 是否热销产品	0:否 1:是
     */
    @Column(name = "ISHOT")
    private Byte ishot;

    /**
     * 是否新品	0:否 1:是
     */
    @Column(name = "ISNEW")
    private Byte isnew;

    /**
     * 是否推荐	0:否 1:是
     */
    @Column(name = "ISRECOM")
    private Byte isrecom;

    /**
     * 商品分类ID路径	catId1_catId2_catId3
     */
    @Column(name = "GOODS_CATID_PATH")
    private String goodsCatidPath;

    /**
     * 最后一级商品分类ID
     */
    @Column(name = "GOODS_CATID")
    private Integer goodsCatid;

    /**
     * 门店商品分类第一级ID
     */
    @Column(name = "SHOP_CATID1")
    private Integer shopCatid1;

    /**
     * 门店商品第二级分类ID
     */
    @Column(name = "SHOP_CATID2")
    private Integer shopCatid2;

    /**
     * 品牌Id
     */
    @Column(name = "BRAND_ID")
    private Integer brandId;

    /**
     * 商品状态	-1:违规 0:未审核 1:已审核
     */
    @Column(name = "GOODS_STATUS")
    private Byte goodsStatus;

    /**
     * 总销售量
     */
    @Column(name = "SALE_NUM")
    private Integer saleNum;

    /**
     * 	上架时间
     */
    @Column(name = "SALE_TIME")
    private Date saleTime;

    /**
     * 访问数
     */
    @Column(name = "VISIT_NUM")
    private Integer visitNum;

    /**
     * 评价数
     */
    @Column(name = "APPRAISE_NUM")
    private Integer appraiseNum;

    /**
     * 是否有规格	0:没有 1:有
     */
    @Column(name = "ISSPEC")
    private Byte isspec;

    /**
     * 商品SEO关键字
     */
    @Column(name = "GOODS_SEO_KEYWORDS")
    private String goodsSeoKeywords;

    /**
     * 状态说明	一般用于说明拒绝原因
     */
    @Column(name = "ILLEGAL_REMARKS")
    private String illegalRemarks;

    /**
     * 删除标志	-1:删除 1:有效
     */
    @Column(name = "DATA_FLAG")
    private Byte dataFlag;

    /**
     * 创建时间
     */
    @Column(name = "CREATE_TIME")
    private Date createTime;

    /**
     * 促销信息
     */
    @Column(name = "GOODS_TIPS")
    private String goodsTips;

    /**
     * 	商品描述
     */
    @Column(name = "GOODS_DESC")
    private String goodsDesc;

    /**
     * 商品相册
     */
    @Column(name = "GALLERY")
    private String gallery;

    /**
     * @return GOODS_ID
     */
    public Integer getGoodsId() {
        return goodsId;
    }

    /**
     * @param goodsId
     */
    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    /**
     * 获取商品编号
     *
     * @return GOODS_SN - 商品编号
     */
    public String getGoodsSn() {
        return goodsSn;
    }

    /**
     * 设置商品编号
     *
     * @param goodsSn 商品编号
     */
    public void setGoodsSn(String goodsSn) {
        this.goodsSn = goodsSn == null ? null : goodsSn.trim();
    }

    /**
     * 获取商品货号
     *
     * @return PRODUCT_NO - 商品货号
     */
    public String getProductNo() {
        return productNo;
    }

    /**
     * 设置商品货号
     *
     * @param productNo 商品货号
     */
    public void setProductNo(String productNo) {
        this.productNo = productNo == null ? null : productNo.trim();
    }

    /**
     * 获取商品名称
     *
     * @return GOODS_NAME - 商品名称
     */
    public String getGoodsName() {
        return goodsName;
    }

    /**
     * 设置商品名称
     *
     * @param goodsName 商品名称
     */
    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName == null ? null : goodsName.trim();
    }

    /**
     * 获取商品图片
     *
     * @return GOODS_IMG - 商品图片
     */
    public String getGoodsImg() {
        return goodsImg;
    }

    /**
     * 设置商品图片
     *
     * @param goodsImg 商品图片
     */
    public void setGoodsImg(String goodsImg) {
        this.goodsImg = goodsImg == null ? null : goodsImg.trim();
    }

    /**
     * 获取门店id
     *
     * @return SHOP_ID - 门店id
     */
    public Integer getShopId() {
        return shopId;
    }

    /**
     * 设置门店id
     *
     * @param shopId 门店id
     */
    public void setShopId(Integer shopId) {
        this.shopId = shopId;
    }

    /**
     * 获取市场价
     *
     * @return MARKET_PRICE - 市场价
     */
    public BigDecimal getMarketPrice() {
        return marketPrice;
    }

    /**
     * 设置市场价
     *
     * @param marketPrice 市场价
     */
    public void setMarketPrice(BigDecimal marketPrice) {
        this.marketPrice = marketPrice;
    }

    /**
     * 获取门店价
     *
     * @return SHOP_PRICE - 门店价
     */
    public BigDecimal getShopPrice() {
        return shopPrice;
    }

    /**
     * 设置门店价
     *
     * @param shopPrice 门店价
     */
    public void setShopPrice(BigDecimal shopPrice) {
        this.shopPrice = shopPrice;
    }

    /**
     * 获取预警库存
     *
     * @return WARN_STOCK - 预警库存
     */
    public Integer getWarnStock() {
        return warnStock;
    }

    /**
     * 设置预警库存
     *
     * @param warnStock 预警库存
     */
    public void setWarnStock(Integer warnStock) {
        this.warnStock = warnStock;
    }

    /**
     * 获取商品总库存·
     *
     * @return GOODS_STOCK - 商品总库存·
     */
    public Integer getGoodsStock() {
        return goodsStock;
    }

    /**
     * 设置商品总库存·
     *
     * @param goodsStock 商品总库存·
     */
    public void setGoodsStock(Integer goodsStock) {
        this.goodsStock = goodsStock;
    }

    /**
     * 获取单位
     *
     * @return GOODS_UNIT - 单位
     */
    public String getGoodsUnit() {
        return goodsUnit;
    }

    /**
     * 设置单位
     *
     * @param goodsUnit 单位
     */
    public void setGoodsUnit(String goodsUnit) {
        this.goodsUnit = goodsUnit == null ? null : goodsUnit.trim();
    }

    /**
     * 获取是否上架	0:不上架 1:上架
     *
     * @return ISSALE - 是否上架	0:不上架 1:上架
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
     * @return ISBEST - 是否精品	0:否 1:是
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
     * @return ISHOT - 是否热销产品	0:否 1:是
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
     * @return ISNEW - 是否新品	0:否 1:是
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
     * @return ISRECOM - 是否推荐	0:否 1:是
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
     * @return GOODS_CATID_PATH - 商品分类ID路径	catId1_catId2_catId3
     */
    public String getGoodsCatidPath() {
        return goodsCatidPath;
    }

    /**
     * 设置商品分类ID路径	catId1_catId2_catId3
     *
     * @param goodsCatidPath 商品分类ID路径	catId1_catId2_catId3
     */
    public void setGoodsCatidPath(String goodsCatidPath) {
        this.goodsCatidPath = goodsCatidPath == null ? null : goodsCatidPath.trim();
    }

    /**
     * 获取最后一级商品分类ID
     *
     * @return GOODS_CATID - 最后一级商品分类ID
     */
    public Integer getGoodsCatid() {
        return goodsCatid;
    }

    /**
     * 设置最后一级商品分类ID
     *
     * @param goodsCatid 最后一级商品分类ID
     */
    public void setGoodsCatid(Integer goodsCatid) {
        this.goodsCatid = goodsCatid;
    }

    /**
     * 获取门店商品分类第一级ID
     *
     * @return SHOP_CATID1 - 门店商品分类第一级ID
     */
    public Integer getShopCatid1() {
        return shopCatid1;
    }

    /**
     * 设置门店商品分类第一级ID
     *
     * @param shopCatid1 门店商品分类第一级ID
     */
    public void setShopCatid1(Integer shopCatid1) {
        this.shopCatid1 = shopCatid1;
    }

    /**
     * 获取门店商品第二级分类ID
     *
     * @return SHOP_CATID2 - 门店商品第二级分类ID
     */
    public Integer getShopCatid2() {
        return shopCatid2;
    }

    /**
     * 设置门店商品第二级分类ID
     *
     * @param shopCatid2 门店商品第二级分类ID
     */
    public void setShopCatid2(Integer shopCatid2) {
        this.shopCatid2 = shopCatid2;
    }

    /**
     * 获取品牌Id
     *
     * @return BRAND_ID - 品牌Id
     */
    public Integer getBrandId() {
        return brandId;
    }

    /**
     * 设置品牌Id
     *
     * @param brandId 品牌Id
     */
    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }

    /**
     * 获取商品状态	-1:违规 0:未审核 1:已审核
     *
     * @return GOODS_STATUS - 商品状态	-1:违规 0:未审核 1:已审核
     */
    public Byte getGoodsStatus() {
        return goodsStatus;
    }

    /**
     * 设置商品状态	-1:违规 0:未审核 1:已审核
     *
     * @param goodsStatus 商品状态	-1:违规 0:未审核 1:已审核
     */
    public void setGoodsStatus(Byte goodsStatus) {
        this.goodsStatus = goodsStatus;
    }

    /**
     * 获取总销售量
     *
     * @return SALE_NUM - 总销售量
     */
    public Integer getSaleNum() {
        return saleNum;
    }

    /**
     * 设置总销售量
     *
     * @param saleNum 总销售量
     */
    public void setSaleNum(Integer saleNum) {
        this.saleNum = saleNum;
    }

    /**
     * 获取	上架时间
     *
     * @return SALE_TIME - 	上架时间
     */
    public Date getSaleTime() {
        return saleTime;
    }

    /**
     * 设置	上架时间
     *
     * @param saleTime 	上架时间
     */
    public void setSaleTime(Date saleTime) {
        this.saleTime = saleTime;
    }

    /**
     * 获取访问数
     *
     * @return VISIT_NUM - 访问数
     */
    public Integer getVisitNum() {
        return visitNum;
    }

    /**
     * 设置访问数
     *
     * @param visitNum 访问数
     */
    public void setVisitNum(Integer visitNum) {
        this.visitNum = visitNum;
    }

    /**
     * 获取评价数
     *
     * @return APPRAISE_NUM - 评价数
     */
    public Integer getAppraiseNum() {
        return appraiseNum;
    }

    /**
     * 设置评价数
     *
     * @param appraiseNum 评价数
     */
    public void setAppraiseNum(Integer appraiseNum) {
        this.appraiseNum = appraiseNum;
    }

    /**
     * 获取是否有规格	0:没有 1:有
     *
     * @return ISSPEC - 是否有规格	0:没有 1:有
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
     * @return GOODS_SEO_KEYWORDS - 商品SEO关键字
     */
    public String getGoodsSeoKeywords() {
        return goodsSeoKeywords;
    }

    /**
     * 设置商品SEO关键字
     *
     * @param goodsSeoKeywords 商品SEO关键字
     */
    public void setGoodsSeoKeywords(String goodsSeoKeywords) {
        this.goodsSeoKeywords = goodsSeoKeywords == null ? null : goodsSeoKeywords.trim();
    }

    /**
     * 获取状态说明	一般用于说明拒绝原因
     *
     * @return ILLEGAL_REMARKS - 状态说明	一般用于说明拒绝原因
     */
    public String getIllegalRemarks() {
        return illegalRemarks;
    }

    /**
     * 设置状态说明	一般用于说明拒绝原因
     *
     * @param illegalRemarks 状态说明	一般用于说明拒绝原因
     */
    public void setIllegalRemarks(String illegalRemarks) {
        this.illegalRemarks = illegalRemarks == null ? null : illegalRemarks.trim();
    }

    /**
     * 获取删除标志	-1:删除 1:有效
     *
     * @return DATA_FLAG - 删除标志	-1:删除 1:有效
     */
    public Byte getDataFlag() {
        return dataFlag;
    }

    /**
     * 设置删除标志	-1:删除 1:有效
     *
     * @param dataFlag 删除标志	-1:删除 1:有效
     */
    public void setDataFlag(Byte dataFlag) {
        this.dataFlag = dataFlag;
    }

    /**
     * 获取创建时间
     *
     * @return CREATE_TIME - 创建时间
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * 设置创建时间
     *
     * @param createTime 创建时间
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * 获取促销信息
     *
     * @return GOODS_TIPS - 促销信息
     */
    public String getGoodsTips() {
        return goodsTips;
    }

    /**
     * 设置促销信息
     *
     * @param goodsTips 促销信息
     */
    public void setGoodsTips(String goodsTips) {
        this.goodsTips = goodsTips == null ? null : goodsTips.trim();
    }

    /**
     * 获取	商品描述
     *
     * @return GOODS_DESC - 	商品描述
     */
    public String getGoodsDesc() {
        return goodsDesc;
    }

    /**
     * 设置	商品描述
     *
     * @param goodsDesc 	商品描述
     */
    public void setGoodsDesc(String goodsDesc) {
        this.goodsDesc = goodsDesc == null ? null : goodsDesc.trim();
    }

    /**
     * 获取商品相册
     *
     * @return GALLERY - 商品相册
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