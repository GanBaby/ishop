package com.ishop.pojo;

import java.util.Date;
import javax.persistence.*;

@Table(name = "tc_goods_appraises")
public class TcGoodsAppraises {
    /**
     * 自增ID
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 门店ID
     */
    @Column(name = "shopId")
    private Integer shopid;

    /**
     * 订单ID
     */
    @Column(name = "orderId")
    private Integer orderid;

    /**
     * 评价对象ID
     */
    @Column(name = "goodsId")
    private Integer goodsid;

    /**
     * 商品-规格Id
     */
    @Column(name = "goodsSpecId")
    private Integer goodsspecid;

    /**
     * 会员ID
     */
    @Column(name = "userId")
    private Integer userid;

    /**
     * 商品评分
     */
    @Column(name = "goodsScore")
    private Integer goodsscore;

    /**
     * 服务评分
     */
    @Column(name = "serviceScore")
    private Integer servicescore;

    /**
     * 时效评分
     */
    @Column(name = "timeScore")
    private Integer timescore;

    /**
     * 是否显示	1:显示 0:隐藏
     */
    @Column(name = "isShow")
    private Byte isshow;

    /**
     * 有效状态	1:有效 -1:无效
     */
    @Column(name = "dataFlag")
    private Byte dataflag;

    /**
     * 创建时间
     */
    @Column(name = "createTime")
    private Date createtime;

    /**
     * 商家回复时间
     */
    @Column(name = "replyTime")
    private Date replytime;

    /**
     * 点评内容
     */
    private String content;

    /**
     * 店铺回复
     */
    @Column(name = "shopReply")
    private String shopreply;

    /**
     * 上传图片
     */
    private String images;

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
     * 获取门店ID
     *
     * @return shopId - 门店ID
     */
    public Integer getShopid() {
        return shopid;
    }

    /**
     * 设置门店ID
     *
     * @param shopid 门店ID
     */
    public void setShopid(Integer shopid) {
        this.shopid = shopid;
    }

    /**
     * 获取订单ID
     *
     * @return orderId - 订单ID
     */
    public Integer getOrderid() {
        return orderid;
    }

    /**
     * 设置订单ID
     *
     * @param orderid 订单ID
     */
    public void setOrderid(Integer orderid) {
        this.orderid = orderid;
    }

    /**
     * 获取评价对象ID
     *
     * @return goodsId - 评价对象ID
     */
    public Integer getGoodsid() {
        return goodsid;
    }

    /**
     * 设置评价对象ID
     *
     * @param goodsid 评价对象ID
     */
    public void setGoodsid(Integer goodsid) {
        this.goodsid = goodsid;
    }

    /**
     * 获取商品-规格Id
     *
     * @return goodsSpecId - 商品-规格Id
     */
    public Integer getGoodsspecid() {
        return goodsspecid;
    }

    /**
     * 设置商品-规格Id
     *
     * @param goodsspecid 商品-规格Id
     */
    public void setGoodsspecid(Integer goodsspecid) {
        this.goodsspecid = goodsspecid;
    }

    /**
     * 获取会员ID
     *
     * @return userId - 会员ID
     */
    public Integer getUserid() {
        return userid;
    }

    /**
     * 设置会员ID
     *
     * @param userid 会员ID
     */
    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    /**
     * 获取商品评分
     *
     * @return goodsScore - 商品评分
     */
    public Integer getGoodsscore() {
        return goodsscore;
    }

    /**
     * 设置商品评分
     *
     * @param goodsscore 商品评分
     */
    public void setGoodsscore(Integer goodsscore) {
        this.goodsscore = goodsscore;
    }

    /**
     * 获取服务评分
     *
     * @return serviceScore - 服务评分
     */
    public Integer getServicescore() {
        return servicescore;
    }

    /**
     * 设置服务评分
     *
     * @param servicescore 服务评分
     */
    public void setServicescore(Integer servicescore) {
        this.servicescore = servicescore;
    }

    /**
     * 获取时效评分
     *
     * @return timeScore - 时效评分
     */
    public Integer getTimescore() {
        return timescore;
    }

    /**
     * 设置时效评分
     *
     * @param timescore 时效评分
     */
    public void setTimescore(Integer timescore) {
        this.timescore = timescore;
    }

    /**
     * 获取是否显示	1:显示 0:隐藏
     *
     * @return isShow - 是否显示	1:显示 0:隐藏
     */
    public Byte getIsshow() {
        return isshow;
    }

    /**
     * 设置是否显示	1:显示 0:隐藏
     *
     * @param isshow 是否显示	1:显示 0:隐藏
     */
    public void setIsshow(Byte isshow) {
        this.isshow = isshow;
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
     * 获取商家回复时间
     *
     * @return replyTime - 商家回复时间
     */
    public Date getReplytime() {
        return replytime;
    }

    /**
     * 设置商家回复时间
     *
     * @param replytime 商家回复时间
     */
    public void setReplytime(Date replytime) {
        this.replytime = replytime;
    }

    /**
     * 获取点评内容
     *
     * @return content - 点评内容
     */
    public String getContent() {
        return content;
    }

    /**
     * 设置点评内容
     *
     * @param content 点评内容
     */
    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    /**
     * 获取店铺回复
     *
     * @return shopReply - 店铺回复
     */
    public String getShopreply() {
        return shopreply;
    }

    /**
     * 设置店铺回复
     *
     * @param shopreply 店铺回复
     */
    public void setShopreply(String shopreply) {
        this.shopreply = shopreply == null ? null : shopreply.trim();
    }

    /**
     * 获取上传图片
     *
     * @return images - 上传图片
     */
    public String getImages() {
        return images;
    }

    /**
     * 设置上传图片
     *
     * @param images 上传图片
     */
    public void setImages(String images) {
        this.images = images == null ? null : images.trim();
    }
}