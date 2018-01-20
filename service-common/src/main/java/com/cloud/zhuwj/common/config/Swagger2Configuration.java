package com.cloud.zhuwj.common.config;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * Created by zhuwj on 2017/11/9.
 */
@Configuration
@EnableSwagger2
public class Swagger2Configuration {

    private static final Logger logger = LoggerFactory.getLogger(PageHelperConfiguration.class);

    @Bean
    public Docket createRestApi() {
        logger.info("Swagger2Configuration createRestApi() ");
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.gdf.carbon"))
                .paths(PathSelectors.any())
                .build();
    }
    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                .title("碳账户微服务api文档")
                .description("碳账户微服务api文档")
                .termsOfServiceUrl("")
                .version("1.0")
                .build();
    }
}
