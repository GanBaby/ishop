package com.ishop.pojo;

import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.*;

@Table(name = "tc_goods_cats")
public class TcGoodsCats {
    /**
     * 自增ID
     */
    @Id
    @Column(name = "catId")
    private Integer catid;

    /**
     * 父ID
     */
    @Column(name = "parentId")
    private Integer parentid;

    /**
     * 分类名称
     */
    @Column(name = "catName")
    private String catname;

    /**
     * 是否显示	0:隐藏 1:显示
     */
    @Column(name = "isShow")
    private Byte isshow;

    /**
     * 是否显示楼层	0:不显示 1:显示
     */
    @Column(name = "isFloor")
    private Byte isfloor;

    /**
     * 排序号
     */
    @Column(name = "catSort")
    private Integer catsort;

    /**
     * 删除标志	1:有效 -1：删除
     */
    @Column(name = "dataFlag")
    private Byte dataflag;

    /**
     * 建立时间
     */
    @Column(name = "createTime")
    private Date createtime;

    /**
     * 商品佣金比例	-1代表使用上级父类的佣金设置
     */
    @Column(name = "commissionRate")
    private BigDecimal commissionrate;

    /**
     * 获取自增ID
     *
     * @return catId - 自增ID
     */
    public Integer getCatid() {
        return catid;
    }

    /**
     * 设置自增ID
     *
     * @param catid 自增ID
     */
    public void setCatid(Integer catid) {
        this.catid = catid;
    }

    /**
     * 获取父ID
     *
     * @return parentId - 父ID
     */
    public Integer getParentid() {
        return parentid;
    }

    /**
     * 设置父ID
     *
     * @param parentid 父ID
     */
    public void setParentid(Integer parentid) {
        this.parentid = parentid;
    }

    /**
     * 获取分类名称
     *
     * @return catName - 分类名称
     */
    public String getCatname() {
        return catname;
    }

    /**
     * 设置分类名称
     *
     * @param catname 分类名称
     */
    public void setCatname(String catname) {
        this.catname = catname == null ? null : catname.trim();
    }

    /**
     * 获取是否显示	0:隐藏 1:显示
     *
     * @return isShow - 是否显示	0:隐藏 1:显示
     */
    public Byte getIsshow() {
        return isshow;
    }

    /**
     * 设置是否显示	0:隐藏 1:显示
     *
     * @param isshow 是否显示	0:隐藏 1:显示
     */
    public void setIsshow(Byte isshow) {
        this.isshow = isshow;
    }

    /**
     * 获取是否显示楼层	0:不显示 1:显示
     *
     * @return isFloor - 是否显示楼层	0:不显示 1:显示
     */
    public Byte getIsfloor() {
        return isfloor;
    }

    /**
     * 设置是否显示楼层	0:不显示 1:显示
     *
     * @param isfloor 是否显示楼层	0:不显示 1:显示
     */
    public void setIsfloor(Byte isfloor) {
        this.isfloor = isfloor;
    }

    /**
     * 获取排序号
     *
     * @return catSort - 排序号
     */
    public Integer getCatsort() {
        return catsort;
    }

    /**
     * 设置排序号
     *
     * @param catsort 排序号
     */
    public void setCatsort(Integer catsort) {
        this.catsort = catsort;
    }

    /**
     * 获取删除标志	1:有效 -1：删除
     *
     * @return dataFlag - 删除标志	1:有效 -1：删除
     */
    public Byte getDataflag() {
        return dataflag;
    }

    /**
     * 设置删除标志	1:有效 -1：删除
     *
     * @param dataflag 删除标志	1:有效 -1：删除
     */
    public void setDataflag(Byte dataflag) {
        this.dataflag = dataflag;
    }

    /**
     * 获取建立时间
     *
     * @return createTime - 建立时间
     */
    public Date getCreatetime() {
        return createtime;
    }

    /**
     * 设置建立时间
     *
     * @param createtime 建立时间
     */
    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    /**
     * 获取商品佣金比例	-1代表使用上级父类的佣金设置
     *
     * @return commissionRate - 商品佣金比例	-1代表使用上级父类的佣金设置
     */
    public BigDecimal getCommissionrate() {
        return commissionrate;
    }

    /**
     * 设置商品佣金比例	-1代表使用上级父类的佣金设置
     *
     * @param commissionrate 商品佣金比例	-1代表使用上级父类的佣金设置
     */
    public void setCommissionrate(BigDecimal commissionrate) {
        this.commissionrate = commissionrate;
    }
}