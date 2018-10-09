package com.ishop.pojo;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "tc_goods_parent_cats_details")
public class TcGoodsParentCatsDetails {
    /**
     * 父分类的id
     */
    @Id
    @Column(name = "CAT_ID")
    private Integer catId;

    @Column(name = "CAT_NAME")
    private String catName;

    /**
     * 分类头部内容
     */
    @Column(name = "TITLE")
    private String title;

    /**
     * 分类头部小标题
     */
    @Column(name = "SUBTITLE")
    private String subtitle;

    /**
     * 分类图片路径
     */
    @Column(name = "IMAGES_PATH")
    private String imagesPath;

    /**
     * 获取父分类的id
     *
     * @return CAT_ID - 父分类的id
     */
    public Integer getCatId() {
        return catId;
    }

    /**
     * 设置父分类的id
     *
     * @param catId 父分类的id
     */
    public void setCatId(Integer catId) {
        this.catId = catId;
    }

    /**
     * @return CAT_NAME
     */
    public String getCatName() {
        return catName;
    }

    /**
     * @param catName
     */
    public void setCatName(String catName) {
        this.catName = catName == null ? null : catName.trim();
    }

    /**
     * 获取分类头部内容
     *
     * @return TITLE - 分类头部内容
     */
    public String getTitle() {
        return title;
    }

    /**
     * 设置分类头部内容
     *
     * @param title 分类头部内容
     */
    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    /**
     * 获取分类头部小标题
     *
     * @return SUBTITLE - 分类头部小标题
     */
    public String getSubtitle() {
        return subtitle;
    }

    /**
     * 设置分类头部小标题
     *
     * @param subtitle 分类头部小标题
     */
    public void setSubtitle(String subtitle) {
        this.subtitle = subtitle == null ? null : subtitle.trim();
    }

    /**
     * 获取分类图片路径
     *
     * @return IMAGES_PATH - 分类图片路径
     */
    public String getImagesPath() {
        return imagesPath;
    }

    /**
     * 设置分类图片路径
     *
     * @param imagesPath 分类图片路径
     */
    public void setImagesPath(String imagesPath) {
        this.imagesPath = imagesPath == null ? null : imagesPath.trim();
    }
}