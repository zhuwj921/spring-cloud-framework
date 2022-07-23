package com.cloud.search.model;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;

/**
 * @author zhuwj
 * @date 2022/07/23 23:04
 * @description: 产品信息
 **/
@Document(indexName = "product")
@Data
public class Product {

    @Id
    private String id;

    private String productName;

    private String productType;
}
