package com.ishop.utils.plugin.jsTree;

import java.util.ArrayList;
import java.util.List;

/**
 * 前端jsTree树形视图插件封装工具
 * Created by 甘银道 on 2018/10/19
 */
public class JsTreeUtil {

    //节点名称
    private String text;
    //节点id
    private String id;
    //节点父id
    private String parentId;
    //层级
    private String floor;
    //图标,为none时是没有图标，否则是默认图标或者自定义图标
    private String icon;
    //state属性对象
    private JsTreeState state;
    //子节点
    private List<JsTreeUtil> children;

    public JsTreeUtil(){
        this.state = new JsTreeState();
        this.children = new ArrayList<>();
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getFloor() {
        return floor;
    }

    public void setFloor(String floor) {
        this.floor = floor;
    }

    public JsTreeState getState() {
        return state;
    }

    public void setState(JsTreeState state) {
        this.state = state;
    }

    public List<JsTreeUtil> getChildren() {
        return children;
    }

    public void setChildren(List<JsTreeUtil> children) {
        this.children = children;
    }
}

