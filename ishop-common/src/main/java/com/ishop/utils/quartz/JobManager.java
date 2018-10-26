package com.ishop.utils.quartz;


import org.apache.log4j.Logger;
import org.quartz.*;
import org.quartz.impl.StdSchedulerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;


public class JobManager {

    private Logger log = Logger.getLogger(JobManager.class);

    /**
     * SchedulerFactory使用获取Scheduler.
     *
     * @return
     * @throws Exception
     */
    private static Scheduler getScheduler() throws Exception {
        SchedulerFactory scheduler = new StdSchedulerFactory();
        return scheduler.getScheduler();
    }

    @Autowired
    private JobService jobService;

    public void addJob() throws Exception {
        // 1- 根据条件从数据库获取定时任务详情
        Job job = new Job();
        job.setStatus(0);
        List<Job> jobList = jobService.selectJob(job);
        if (jobList == null || jobList.isEmpty()) {
            return;
        }
        // 2- 获取Scheduler
        Scheduler scheduler = getScheduler();

        // 3- 循环添加数据库中的任务
        for (Job j : jobList) {
            int i = 1;
            // 通过反射获取任务详情实体类
            Class clazz = Class.forName(j.getJob_class());
            // 4- 新建JobDetail
            JobDetail jobDetail = JobBuilder.newJob(clazz).withIdentity(j.getJob_name(), "jobGroup" + i).build();
            // 5- 新建触发器
            Trigger trigger = TriggerBuilder.newTrigger().withIdentity("trigger" + i, "triggerGroup" + i)
                    .withSchedule(CronScheduleBuilder.cronSchedule(j.getJob_time())).startNow().build();
            // 6- 将任务类 和触发器添加到任务Scheduler
            scheduler.scheduleJob(jobDetail, trigger);
            // 7- 启动Scheduler
            scheduler.start();
            log.info("添加定时任务[jobName] -  "+j.getJob_name()+" [jobClass] - "+j.getJob_class());
            i++;
        }
    }


}