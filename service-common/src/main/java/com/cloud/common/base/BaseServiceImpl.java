package com.cloud.common.base;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;

import java.util.List;
import java.util.Optional;

/**
 * Description: TODO
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-09-25
 */

public class BaseServiceImpl<T extends BaseEntity> implements BaseService<T> {

    @Autowired
    private BaseRepository<T> baseRepository;


    @Override
    public T create(T t) {
        baseRepository.saveAndFlush(t);
        return t;
    }

    @Override
    public T update(T t) {
        baseRepository.saveAndFlush(t);
        return t;
    }

    @Override
    public void deleteById(Long id) {
        baseRepository.deleteById(id);
    }

    @Override
    public void delete(T t) {
        baseRepository.delete(t);
    }

    @Override
    public List<T> findAll(Specification<T> specification, Sort sort) {
        return baseRepository.findAll(specification, sort.descending());
    }

    @Override
    public List<T> findAll(Example<T> example, Sort sort) {
        return baseRepository.findAll(example, sort.descending());
    }

    @Override
    public Page<T> page(Pageable pageable, Example<T> example) {
        return baseRepository.findAll(example, pageable);
    }

    @Override
    public T findById(Long id) {
        Optional<T> optional = baseRepository.findById(id);
        return optional.isPresent() ? optional.get() : null;
    }

}
