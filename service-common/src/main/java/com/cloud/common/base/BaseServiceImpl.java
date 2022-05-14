package com.cloud.common.base;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import java.util.List;

/**
 * Description: TODO
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-09-25
 */

public class BaseServiceImpl<T extends BaseEntity> implements BaseService<T> {




    @Override
    public T create(T t) {
        return t;
    }

    @Override
    public T update(T t) {

        return t;
    }

    @Override
    public void deleteById(Long id) {

    }

    @Override
    public void delete(T t) {

    }



    @Override
    public List<T> findAll(Example<T> example, Sort sort) {
        return null;
    }

    @Override
    public Page<T> page(Pageable pageable, Example<T> example) {
        return null;
    }

    @Override
    public T findById(Long id) {
        return null;
    }

}
