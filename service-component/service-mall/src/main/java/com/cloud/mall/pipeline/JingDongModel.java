package com.cloud.mall.pipeline;

import lombok.Data;
import us.codecraft.webmagic.model.annotation.ExtractBy;
import us.codecraft.webmagic.model.annotation.HelpUrl;
import us.codecraft.webmagic.model.annotation.TargetUrl;

/**
 * Description: JinDongModel
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-12-29
 */
@Data
@TargetUrl("https://item.jd.com/*")
@HelpUrl("https://list.jd.com/list.html?cat=9987,653,655")
public class JingDongModel {
    @ExtractBy(value = "/html/body/div[6]/div/div[2]/div[1]/text()")
    private String title;

    @ExtractBy(value = "/html/head/script[4]")
    private String pageConfig;
}
