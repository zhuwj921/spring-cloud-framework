package com.cloud.zhuwj.user.config;

import com.cloud.zhuwj.user.fegin.ITestFeginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author zhuwj
 * @version V1.0
 * @Description: TODO
 * @date 2018/4/1.
 */
@Component
public class QuartzService {

    @Autowired
    ITestFeginService testFeginService;
    @Scheduled(cron = "0/5 * * * * ? ")
    public void timerToNow(){
        testFeginService.test();
        System.out.println("now time:" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
    }
}
