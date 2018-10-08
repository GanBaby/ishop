package com.ishop.utils.pojo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

/**
 * @author 作者:甘银道
 * @version 创建时间：2018年6月20日 下午7:42:39
 * 用户工具类(可获取当前用户)
 */
public class UserUtil {

	public static final String LOGIN_USER = "user";
	
	public static void setUser(SelfUser user) {
	    getSession().setAttribute(LOGIN_USER, user);
	}
	
	public static SelfUser getUser(HttpSession session) {
	    return (SelfUser)session.getAttribute(LOGIN_USER);
	}
	
	public static SelfUser getUser() {
	    return (SelfUser)getSession().getAttribute(LOGIN_USER);
	}
	
	public static HttpSession getSession() {
	    return getRequest().getSession();
	}
	
	public static HttpServletRequest getRequest()
	{
	  ServletRequestAttributes requestAttributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
	
	  HttpServletRequest request = requestAttributes.getRequest();
	
	  return request;
	}
	
}
