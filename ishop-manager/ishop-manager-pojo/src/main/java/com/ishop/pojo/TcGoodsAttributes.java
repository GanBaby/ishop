package com.ishop.pojo;

import java.util.Date;
import javax.persistence.*;

@Table(name = "tc_goods_attributes")
public class TcGoodsAttributes {
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
     * 属性名称
     */
    @Column(name = "attrId")
    private Integer attrid;

    /**
     * 创建时间
     */
    @Column(name = "createTime")
    private Date createtime;

    /**
     * 属性值
     */
    @Column(name = "attrVal")
    private String attrval;

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
     * 获取属性名称
     *
     * @return attrId - 属性名称
     */
    public Integer getAttrid() {
        return attrid;
    }

    /**
     * 设置属性名称
     *
     * @param attrid 属性名称
     */
    public void setAttrid(Integer attrid) {
        this.attrid = attrid;
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
     * 获取属性值
     *
     * @return attrVal - 属性值
     */
    public String getAttrval() {
        return attrval;
    }

    /**
     * 设置属性值
     *
     * @param attrval 属性值
     */
    public void setAttrval(String attrval) {
        this.attrval = attrval == null ? null : attrval.trim();
    }
}