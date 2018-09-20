package com.ishop.utils.util;


import com.ishop.utils.global.Global;

/**
 * Created by 10125095 on 2016/2/24.
 */
public class Message<T> {
    private String rspCode = Global.SUCCESS;
    private String rspDesc;
    private Object entity;

    public Message()
    {
        this.setRspCode(rspCode);
        this.setRspDesc(rspDesc);
        this.setEntity(entity);

    }

    public Message(Object entity)
    {
        this.setEntity(entity);
    }

    public Message(String errorCode,String errorMsg)
    {
        this.setRspCode(errorCode);
        this.setRspDesc(errorMsg);
    }
    
    public Message(String errorCode,String errorMsg,Object entity)
    {
        this.setRspCode(errorCode);
        this.setRspDesc(errorMsg);
        this.setEntity(entity);
    }

    public String getRspCode() {
        return rspCode;
    }

    public void setRspCode(String rspCode) {
        this.rspCode = rspCode;
    }

    public String getRspDesc() {
        return rspDesc;
    }

    public void setRspDesc(String rspDesc) {
        this.rspDesc = rspDesc;
    }

    public Object getEntity() {
        return entity;
    }

    public void setEntity(Object entity) {
        this.entity = entity;
    }
}
