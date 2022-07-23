package com.cloud.search.service;

import com.cloud.search.model.Product;

/**
 * @author zhuwj
 */
public interface ProductService {
    /**
     * 保存
     * @param product
     */
    void save(Product product);

    /**
     * 查询
     * @param id
     * @return
     */
    Product findById(String id);
}
