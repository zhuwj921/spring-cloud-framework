package com.cloud.common.utils;

import cn.hutool.core.lang.Console;
import cn.hutool.system.SystemUtil;
import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.config.OutputFile;
import com.baomidou.mybatisplus.generator.engine.FreemarkerTemplateEngine;

import java.util.Collections;

/**
 * @author zhuwj
 * @date 2022/05/14 22:10
 * @description: 代码生成工具类
 **/
public class CodeAutoGeneratorUtil {

    public static final String URL = "jdbc:mysql://127.0.0.1:3306/spring_cloud_framework?autoReconnect=true&autoReconnectForPools=true&useUnicode=true&characterEncoding=UTF-8&useSSL=true&serverTimezone=GMT";
    public static final String USERNAME = "root";
    public static final String PASSWORD = "81ce7571cf55f1aa41d6d9d5d7f25b09415fee188a720f13b0ef686f183b2f17";
    public static final String SERVICE = "service-";
    public static final String GATEWAY = "gateway";
    public static final String AUTH = "auth";
    public static final String INTEGRAL = "integral";

    public static final String SERVICE_COMPONENT = "service-component/";


    public static void main(String[] argus) {
        String module = INTEGRAL;
        String tableName = "integral_user_count";
        //是否存在下一级
        String next = SERVICE_COMPONENT;
        generator(module, tableName, next);
    }

    public static void generator(String parentName, String tableName, String next) {
        String projectPath = System.getProperty(SystemUtil.USER_DIR);
        String moduleName = SERVICE + parentName;
        String outputDir = projectPath + "/" + next + moduleName + "/src/main/java/";
        Console.log(outputDir);
        FastAutoGenerator.create(URL, USERNAME, PASSWORD)
                .globalConfig(builder -> {
                    builder.author("zhuwj") // 设置作者
                            .enableSwagger() // 开启 swagger 模式
                            .disableOpenDir()
                            .outputDir(outputDir); // 指定输出目录
                })
                .packageConfig(builder -> {
                    builder.parent("com.cloud") // 设置父包名
                            .moduleName(parentName) // 设置父包模块名
                            .pathInfo(Collections.singletonMap(OutputFile.xml, projectPath + "/" + next + moduleName + "/src/main/resources/mapper/")); // 设置mapperXml生成路径
                })
                .strategyConfig(builder -> {
                    builder.addInclude(tableName) // 设置需要生成的表名
                          //  .addTablePrefix(parentName)// 设置过滤表前缀
                            .entityBuilder()
                            .superClass("com.cloud.common.base.BaseEntity")
                            .versionColumnName("version")
                            .logicDeleteColumnName("is_deleted")
                            .logicDeletePropertyName("deleted")
                            .enableTableFieldAnnotation()
                            .fileOverride()
                            .enableLombok()
                            .disableSerialVersionUID()
                            .enableRemoveIsPrefix()
                            .disableSerialVersionUID()
                            .addSuperEntityColumns(new String[]{"id", "create_by", "create_time", "is_deleted", "modified_by", "modified_time", "version"})
                            .serviceBuilder()
                            .fileOverride()
                            .controllerBuilder()
                            .enableRestStyle()
                            .fileOverride()
                            .mapperBuilder().enableBaseResultMap()
                            .enableBaseColumnList().fileOverride();
                })
                .templateEngine(new FreemarkerTemplateEngine()) // 使用Freemarker引擎模板，默认的是Velocity引擎模板
                .templateConfig(builder -> builder.controller(""))
                .execute();

    }

}
