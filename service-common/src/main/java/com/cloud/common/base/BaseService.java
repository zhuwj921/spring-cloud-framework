package com.cloud.common.base;


import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;

import java.util.List;

/**
 * @author zhuwj
 * @desc
 */
public interface BaseService<T extends BaseEntity> {

    T create(T t);

    T update(T t);

    void deleteById(Long id);

    void delete(T t);

    List<T> findAll(Specification<T> specification, Sort sort);

    List<T> findAll(Example<T> example, Sort sort);

    Page<T> page(Pageable pageable, Example<T> example);

     T findById(Long id);


}
