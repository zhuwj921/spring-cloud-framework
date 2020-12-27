package com.cloud.mall.controller;

import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.model.ConsolePageModelPipeline;
import us.codecraft.webmagic.model.OOSpider;
import us.codecraft.webmagic.model.annotation.ExtractBy;
import us.codecraft.webmagic.model.annotation.HelpUrl;
import us.codecraft.webmagic.model.annotation.TargetUrl;

/**
 * @author: zhuwj
 * @date: 2020/12/26 16:32
 * @description:
 */
@TargetUrl("https://item.jd.com/*")
@HelpUrl("https://list.jd.com/list.html?cat=9987,653,655")
public class JinDong {

    @ExtractBy(value = "/html/body/div[6]/div/div[2]/div[1]/text()")
    private String title;


    public static void main(String[] args) {
        OOSpider.create(Site.me().setSleepTime(1000).setCharset("utf-8").setUserAgent("Mozilla/5.0")
                , new ConsolePageModelPipeline(), JinDong.class)
                .addUrl("https://list.jd.com/list.html?cat=9987,653,655").thread(1).run();
    }




}
