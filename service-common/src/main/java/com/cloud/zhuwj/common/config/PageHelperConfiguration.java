/**
 * Project Name:com.wstro.wsplus.core
 * File Name:MyBatisConfiguration.java
 * Package Name:com.wstro.wsplus.configuration
 * Date:2017年2月21日上午9:27:08
 * Copyright (c) 2017, winstrong All Rights Reserved.
 *
*/

package com.cloud.zhuwj.common.config;

import com.github.pagehelper.PageHelper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.Properties;

/**
 *
 */
@Configuration
public class PageHelperConfiguration {

	private static final Logger logger = LoggerFactory.getLogger(PageHelperConfiguration.class);

	@Bean
	public PageHelper pageHelper() {
		logger.info("PageHelperConfiguration.pageHelper()");
		PageHelper pageHelper = new PageHelper();
		Properties properties = new Properties();
		properties.setProperty("offsetAsPageNum", "true");
		properties.setProperty("rowBoundsWithCount", "true");
		properties.setProperty("reasonable", "true");
		pageHelper.setProperties(properties);
		return pageHelper;
	}
}
