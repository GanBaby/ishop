package com.ishop.base.quartz;

import com.ishop.utils.util.DateUtil;

import java.util.Date;

/**
 * Created by 甘银道 on 2018/10/26
 * quartz定时任务
 */
public class TestJobTask{
    /**
     *业务逻辑处理
     */
    public void   service(){
        //准点报时
        System.out.println("现在是北京时间:"+ DateUtil.format(new Date(),"yyyy-MM-dd HH:mm"));
    }
}
