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
    /**
     * 创建
     * @param t
     * @return
     */
    T create(T t);

    /**
     * 更新
     * @param t
     * @return
     */

    T update(T t);

    /**
     * 删除通过id
     * @param id
     */
    void deleteById(Long id);

    /**
     * 删除
     * @param t
     */
    void delete(T t);

    /**
     * 查询全部
     * @param specification
     * @param sort
     * @return
     */
    List<T> findAll(Specification<T> specification, Sort sort);

    /**
     * 查询全部
     * @param example
     * @param sort
     * @return
     */
    List<T> findAll(Example<T> example, Sort sort);

    /**
     * 分页
     * @param pageable
     * @param example
     * @return
     */
    Page<T> page(Pageable pageable, Example<T> example);

    /**
     * 查询通过id
     * @param id
     * @return
     */
     T findById(Long id);


}
