package com.ishop.utils.util;

import java.util.List;

/**
 * bootstrap table分页工具类
 * Created by 甘银道 on 2018/9/21
 */
public class PageUtil {
    //数据总数
    private long total;
    //需要显示的数据
    private List rows;

    public PageUtil(long total,List rows){
        this.total=total;
        this.rows=rows;
    }

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public List getRows() {
        return rows;
    }

    public void setRows(List rows) {
        this.rows = rows;
    }
}
