package com.ishop.utils.pojo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

/**
* @author ����:������
* @version ����ʱ�䣺2018��6��20�� ����7:42:39
* �û�������(�ɻ�ȡ��ǰ�û�)
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
