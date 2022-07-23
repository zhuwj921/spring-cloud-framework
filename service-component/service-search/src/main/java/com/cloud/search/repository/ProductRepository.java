package com.cloud.search.repository;

import com.cloud.search.model.Product;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;

/**
 *
 * @author zhuwj
 */
public interface ProductRepository extends ElasticsearchRepository<Product, String> {
}
