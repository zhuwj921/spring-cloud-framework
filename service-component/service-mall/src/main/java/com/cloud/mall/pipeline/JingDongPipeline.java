package com.cloud.mall.pipeline;

import com.cloud.common.constant.GlobalConstant;
import com.cloud.mall.domain.Product;
import com.cloud.mall.service.ProductService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.PageModelPipeline;

import java.math.BigDecimal;
import java.time.LocalDateTime;

/**
 * Description: JinDongPipeline
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-12-29
 */
@RequiredArgsConstructor
@Component
@Slf4j
public class JingDongPipeline implements PageModelPipeline<JingDongModel> {

    private final ProductService productService;

    @Override
    public void process(JingDongModel model, Task task) {
        log.info(model.getTitle());
        log.info(model.getPageConfig());

        Product product = new Product();
        LocalDateTime now = LocalDateTime.now();
        product.setCreateBy(GlobalConstant.ANONYMOUS_USER_ID);
        product.setCreateTime(now);
        product.setModifiedBy(GlobalConstant.ANONYMOUS_USER_ID);
        product.setModifiedTime(now);
        product.setDeleted(Boolean.FALSE);
        product.setVersion(0);
        product.setPublishTime(LocalDateTime.now());
        product.setPrice(new BigDecimal("100"));
        product.setSumAmount(100);
        product.setResidueAmount(100);
        product.setProductName(model.getTitle());
        productService.create(product);
    }
}
