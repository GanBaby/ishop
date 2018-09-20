package com.ishop.utils.controller;


import com.ishop.utils.global.Global;
import com.ishop.utils.pojo.UserUtil;
import com.ishop.utils.util.Message;

public class BaseController extends UserUtil {

	
    /**
     * ajax失败
     * @param msg 失败的消息
     * @return {Object}
     */
    public Message renderError(String msg) {
        Message message = new Message(Global.ERROR,msg);
        return message;
    }
	
    /**
     * ajax失败
     * @param msg 失败的消息
     * @param obj 携带对象
     * @return 失败消息
     */
    public Message renderError(String msg,Object obj) {
    	Message message = new Message(Global.ERROR,msg,obj);
		return message;
    }
	
    /**
     * 错误返回消息
     * @param e 错误异常
     * @return 错误消息
     */
    public Message renderException(Exception e) {
    	e.printStackTrace();
        Message message = new Message(Global.EXCEPTION,e.getMessage());
        return message;
    }
    

    /**
     * ajax成功
     * @return {Object}
     */
    public Message renderSuccess() {
        Message message = new Message(Global.SUCCESS, "");
        return message;
    }

    /**
     * ajax成功
     * @param msg 消息
     * @return {Object}
     */
    public Message renderSuccess(String msg) {
        Message message = new Message(Global.SUCCESS, msg);
        return message;
    }

    /**
     * ajax成功
     * @param obj 成功时的对象
     * @return {Object}
     */
    public Message renderSuccess(Object obj) {
        Message message = new Message(Global.SUCCESS, Global.SUCCESS, obj);
        return message;
    }
    
}
