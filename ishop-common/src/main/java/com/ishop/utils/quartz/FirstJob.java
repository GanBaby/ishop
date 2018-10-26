package com.ishop.utils.quartz;

import java.text.SimpleDateFormat;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

public class FirstJob implements Job{

    public void execute(JobExecutionContext context) throws JobExecutionException {
        System.out.println("job-->"+new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(System.currentTimeMillis()));
    }

}