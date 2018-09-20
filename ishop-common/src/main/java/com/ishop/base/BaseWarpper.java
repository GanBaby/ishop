package com.ishop.base;

import com.ishop.utils.JsonUtils;

import java.util.List;
import java.util.Map;

/**
 * 控制器查询结果的包装类基类
 */
public abstract class BaseWarpper {

    public Object obj = null;

    public BaseWarpper(Object obj) {
        this.obj = obj;
    }

    public Object warp() {
        if (this.obj instanceof List) {
            List mapList = JsonUtils.objectToMap(obj);
            List<Map<String, Object>> list = (List<Map<String, Object>>) mapList;
            for (Map<String, Object> map : list) {
                warpTheMap(map);
            }
            return list;
        } else if (this.obj instanceof Map) {
            Map<String, Object> map = (Map<String, Object>) this.obj;
            warpTheMap(map);
            return map;
        } else {
            return this.obj;
        }
    }


    protected abstract void warpTheMap(Map<String, Object> map);
}
