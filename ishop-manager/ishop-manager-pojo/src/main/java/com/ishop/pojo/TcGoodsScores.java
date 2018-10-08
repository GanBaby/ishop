package com.ishop.pojo;

import javax.persistence.*;

@Table(name = "tc_goods_scores")
public class TcGoodsScores {
    /**
     * 自增ID
     */
    @Id
    @Column(name = "scoreId")
    private Integer scoreid;

    /**
     * 商品ID
     */
    @Column(name = "goodsId")
    private Integer goodsid;

    /**
     * 门店ID
     */
    @Column(name = "shopId")
    private Integer shopid;

    /**
     * 总评分
     */
    @Column(name = "totalScore")
    private Integer totalscore;

    /**
     * 总评评分用户数
     */
    @Column(name = "totalUsers")
    private Integer totalusers;

    /**
     * 商品评分
     */
    @Column(name = "goodsScore")
    private Integer goodsscore;

    /**
     * 商品评分用户数
     */
    @Column(name = "goodsUsers")
    private Integer goodsusers;

    /**
     * 服务评分
     */
    @Column(name = "serviceScore")
    private Integer servicescore;

    /**
     * 服务评分用户数
     */
    @Column(name = "serviceUsers")
    private Integer serviceusers;

    /**
     * 时效评分
     */
    @Column(name = "timeScore")
    private Integer timescore;

    /**
     * 时效评分用户数
     */
    @Column(name = "timeUsers")
    private Integer timeusers;

    /**
     * 获取自增ID
     *
     * @return scoreId - 自增ID
     */
    public Integer getScoreid() {
        return scoreid;
    }

    /**
     * 设置自增ID
     *
     * @param scoreid 自增ID
     */
    public void setScoreid(Integer scoreid) {
        this.scoreid = scoreid;
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
     * 获取总评分
     *
     * @return totalScore - 总评分
     */
    public Integer getTotalscore() {
        return totalscore;
    }

    /**
     * 设置总评分
     *
     * @param totalscore 总评分
     */
    public void setTotalscore(Integer totalscore) {
        this.totalscore = totalscore;
    }

    /**
     * 获取总评评分用户数
     *
     * @return totalUsers - 总评评分用户数
     */
    public Integer getTotalusers() {
        return totalusers;
    }

    /**
     * 设置总评评分用户数
     *
     * @param totalusers 总评评分用户数
     */
    public void setTotalusers(Integer totalusers) {
        this.totalusers = totalusers;
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
     * 获取商品评分用户数
     *
     * @return goodsUsers - 商品评分用户数
     */
    public Integer getGoodsusers() {
        return goodsusers;
    }

    /**
     * 设置商品评分用户数
     *
     * @param goodsusers 商品评分用户数
     */
    public void setGoodsusers(Integer goodsusers) {
        this.goodsusers = goodsusers;
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
     * 获取服务评分用户数
     *
     * @return serviceUsers - 服务评分用户数
     */
    public Integer getServiceusers() {
        return serviceusers;
    }

    /**
     * 设置服务评分用户数
     *
     * @param serviceusers 服务评分用户数
     */
    public void setServiceusers(Integer serviceusers) {
        this.serviceusers = serviceusers;
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
     * 获取时效评分用户数
     *
     * @return timeUsers - 时效评分用户数
     */
    public Integer getTimeusers() {
        return timeusers;
    }

    /**
     * 设置时效评分用户数
     *
     * @param timeusers 时效评分用户数
     */
    public void setTimeusers(Integer timeusers) {
        this.timeusers = timeusers;
    }
}