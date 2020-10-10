package com.cloud.common.base;

import lombok.Data;
import org.springframework.data.domain.Sort;

/**
 * Description: TODO
 *
 * @author zhuwj
 * @version V1.0
 * @date 2020-10-10
 */
@Data
public class PageEntity<T> {

    private int page;

    private int size;

    private Sort sort;

    private T queryData;

}
