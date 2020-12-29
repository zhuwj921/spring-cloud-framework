package com.cloud.mall.controller;

import com.cloud.mall.pipeline.JingDongModel;
import com.cloud.mall.pipeline.JingDongPipeline;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.model.OOSpider;

/**
 * @author: zhuwj
 * @date: 2020/12/26 16:32
 * @description:
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class JingDong {

    @Autowired
    private JingDongPipeline jingDongPipeline;

    @Test
    public void test() {
        OOSpider.create(Site.me().setSleepTime(1000).setCharset("utf-8").setUserAgent("Mozilla/5.0")
                , jingDongPipeline, JingDongModel.class)
                .addUrl("https://list.jd.com/list.html?cat=9987,653,655").thread(1).run();
    }


}
