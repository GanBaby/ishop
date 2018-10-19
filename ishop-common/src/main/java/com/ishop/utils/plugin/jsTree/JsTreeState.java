package com.ishop.utils.plugin.jsTree;

/**
 * 树形视图插件的state属性对象
 */
public class JsTreeState{
    //节点展开 true||false
    private boolean opened;
    // 节点禁用 true||false
    private boolean disabled;
    // 节点选中 true||false
    private boolean selected;

    public boolean isOpened() {
        return opened;
    }

    public void setOpened(boolean opened) {
        this.opened = opened;
    }

    public boolean isDisabled() {
        return disabled;
    }

    public void setDisabled(boolean disabled) {
        this.disabled = disabled;
    }

    public boolean isSelected() {
        return selected;
    }

    public void setSelected(boolean selected) {
        this.selected = selected;
    }
}
