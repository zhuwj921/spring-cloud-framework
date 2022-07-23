package com.cloud.search.service.impl;

import com.cloud.search.model.Product;
import com.cloud.search.repository.ProductRepository;
import com.cloud.search.service.ProductService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.Optional;

/**
 * @author zhuwj
 * @date 2022/07/23 23:12
 * @description:
 **/
@Slf4j
@Service
@RequiredArgsConstructor
public class ProductServiceImpl implements ProductService {

    private final ProductRepository productRepository;

    @Override
    public void save(Product product) {
        Product result = productRepository.save(product);
        log.info(result.toString());
    }

    @Override
    public Product findById(String id) {
        Optional<Product> optional = productRepository.findById(id);
        return optional.get();
    }
}
