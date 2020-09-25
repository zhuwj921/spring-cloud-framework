package com.cloud.gateway.repository;


import com.cloud.gateway.domain.RequestLog;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 *  请求日志Repository
 * @author zhuwj
 */
public interface RequestLogRepository extends JpaRepository<RequestLog, Long>, JpaSpecificationExecutor<RequestLog> {


}
