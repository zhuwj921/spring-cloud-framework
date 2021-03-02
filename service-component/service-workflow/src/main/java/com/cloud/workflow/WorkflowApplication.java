package com.cloud.workflow;

import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * 工作流启动类
 *
 * @author zhuwj
 */
@EnableTransactionManagement
@ComponentScan("com.cloud")
@SpringCloudApplication
public class WorkflowApplication {
    public static void main(String[] args) {
        SpringApplication.run(WorkflowApplication.class, args);
    }
}
