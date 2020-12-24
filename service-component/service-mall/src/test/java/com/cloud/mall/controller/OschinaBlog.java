package com.cloud.mall.controller;

import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.model.OOSpider;
import us.codecraft.webmagic.model.annotation.ExtractBy;
import us.codecraft.webmagic.model.annotation.TargetUrl;
import us.codecraft.webmagic.pipeline.JsonFilePageModelPipeline;

import java.util.List;

/**
 * Description: TODO
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-12-24
 */
@TargetUrl("http://my.oschina.net/flashsword/blog/\\d+")
public class OschinaBlog {

    @ExtractBy("//title")
    private String title;

    @ExtractBy(value = "div.BlogContent",type = ExtractBy.Type.Css)
    private String content;

    @ExtractBy(value = "//div[@class='BlogTags']/a/text()")
    private List<String> tags;
    public static void main(String[] args) {
        String path="/Users/zhuwj/tool/webmagic/";
        OOSpider.create(
                Site.me(),
                new JsonFilePageModelPipeline(path), OschinaBlog.class).addUrl("http://my.oschina.net/flashsword/blog").run();
    }
}
