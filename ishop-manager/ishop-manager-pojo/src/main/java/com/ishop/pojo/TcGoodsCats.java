package com.ishop.pojo;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import java.math.BigDecimal;
import java.util.Date;

@Table(name = "tc_goods_cats")
public class TcGoodsCats {
    /**
     * 自增ID
     */
    @Id
    @Column(name = "CAT_ID")
    private Integer catId;

    /**
     * 父ID
     */
    @Column(name = "PARENT_ID")
    private Integer parentId;

    /**
     * 分类名称
     */
    @Column(name = "CAT_NAME")
    private String catName;

    /**
     * 是否显示	0:隐藏 1:显示
     */
    @Column(name = "IS_SHOW")
    private Byte isShow;

    /**
     * 是否显示楼层	0:不显示 1:显示
     */
    @Column(name = "FLOOR")
    private Byte floor;

    /**
     * 排序号
     */
    @Column(name = "CAT_SORT")
    private Integer catSort;

    /**
     * 删除标志	1:有效 -1：删除
     */
    @Column(name = "DATA_FLAG")
    private Byte dataFlag;

    /**
     * 建立时间
     */
    @Column(name = "CREATE_TIME")
    private Date createTime;

    /**
     * 商品佣金比例	-1代表使用上级父类的佣金设置
     */
    @Column(name = "COMMISSION_RATE")
    private BigDecimal commissionRate;

    /**
     * 获取自增ID
     *
     * @return CAT_ID - 自增ID
     */
    public Integer getCatId() {
        return catId;
    }

    /**
     * 设置自增ID
     *
     * @param catId 自增ID
     */
    public void setCatId(Integer catId) {
        this.catId = catId;
    }

    /**
     * 获取父ID
     *
     * @return PARENT_ID - 父ID
     */
    public Integer getParentId() {
        return parentId;
    }

    /**
     * 设置父ID
     *
     * @param parentId 父ID
     */
    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    /**
     * 获取分类名称
     *
     * @return CAT_NAME - 分类名称
     */
    public String getCatName() {
        return catName;
    }

    /**
     * 设置分类名称
     *
     * @param catName 分类名称
     */
    public void setCatName(String catName) {
        this.catName = catName == null ? null : catName.trim();
    }

    /**
     * 获取是否显示	0:隐藏 1:显示
     *
     * @return IS_SHOW - 是否显示	0:隐藏 1:显示
     */
    public Byte getIsShow() {
        return isShow;
    }

    /**
     * 设置是否显示	0:隐藏 1:显示
     *
     * @param isShow 是否显示	0:隐藏 1:显示
     */
    public void setIsShow(Byte isShow) {
        this.isShow = isShow;
    }

    /**
     * @return FLOOR - 楼层
     */
    public Byte getFloor() {
        return floor;
    }

    /**
     * @param floor 楼层
     */
    public void setFloor(Byte floor) {
        this.floor = floor;
    }

    /**
     * 获取排序号
     *
     * @return CAT_SORT - 排序号
     */
    public Integer getCatSort() {
        return catSort;
    }

    /**
     * 设置排序号
     *
     * @param catSort 排序号
     */
    public void setCatSort(Integer catSort) {
        this.catSort = catSort;
    }

    /**
     * 获取删除标志	1:有效 -1：删除
     *
     * @return DATA_FLAG - 删除标志	1:有效 -1：删除
     */
    public Byte getDataFlag() {
        return dataFlag;
    }

    /**
     * 设置删除标志	1:有效 -1：删除
     *
     * @param dataFlag 删除标志	1:有效 -1：删除
     */
    public void setDataFlag(Byte dataFlag) {
        this.dataFlag = dataFlag;
    }

    /**
     * 获取建立时间
     *
     * @return CREATE_TIME - 建立时间
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * 设置建立时间
     *
     * @param createTime 建立时间
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * 获取商品佣金比例	-1代表使用上级父类的佣金设置
     *
     * @return COMMISSION_RATE - 商品佣金比例	-1代表使用上级父类的佣金设置
     */
    public BigDecimal getCommissionRate() {
        return commissionRate;
    }

    /**
     * 设置商品佣金比例	-1代表使用上级父类的佣金设置
     *
     * @param commissionRate 商品佣金比例	-1代表使用上级父类的佣金设置
     */
    public void setCommissionRate(BigDecimal commissionRate) {
        this.commissionRate = commissionRate;
    }
}