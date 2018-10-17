package com.ishop.utils.util;

/**
 * 获取Spring容器中bean工具类
 * Created by 甘银道 on 2018/10/16
 */
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.BeanFactoryAware;

public class SpringBeanUtil implements BeanFactoryAware
{
    private static BeanFactory beanFactory = null;

    public void setBeanFactory(BeanFactory beanFactory) throws BeansException
    {
        SpringBeanUtil.beanFactory = beanFactory;
    }

    public static BeanFactory getBeanFactory()
    {
        return beanFactory;
    }

    public static Object getBean(String beanName)
    {
        return beanFactory.getBean(beanName);
    }

}