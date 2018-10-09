package com.ishop.service.page;

import java.util.List;
import java.util.Map;

/**
 * Created by 甘银道 on 2018/10/9
 */
public interface PageService {


    /**
     * 获取首页要展示的内容
     * @return 返回获取的内容数据
     */
    List<Map<String,String>> getIndexData();


}
