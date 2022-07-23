# spring-cloud-framework

> - SpringCloud 微服务学习使用与实践，结合相关业务进行验证等。
    > 使用nacos作为服务注册中心，[nacos文档](https://nacos.io/zh-cn/index.html)
    > [阿里云maven](https://packages.aliyun.com/maven)
> - zookeeper
> - Kafka
> - Redis
> - Mysql

## 模块版本

| 名称                   | 版本             |
|----------------------|----------------|
| spring-boot          | 2.3.7.RELEASE  |
| spring-cloud         | Hoxton.SR9     |
| spring-cloud-alibaba | 2.2.3.RELEASE  |
| lombok               | 1.18.12        |
| hutool               | 5.8.1          |
| Kafka                | 2.5.10.RELEASE |
| sharding-jdbc        | 3.1.0          |

## 服务列表

| 名称               | 端口   | 描述        |
|------------------|------|-----------|
| service-common   |      | 模块公用功能和属性 |
| service-gateway  | 8900 | 网关服务      |
| service-auth     | 8910 | 权限服务      |
| service-product  | 8920 | 商品服务      |
| service-message  | 8930 | 消息服务      |
| service-order    | 8940 | 订单服务      |
| service-integral | 8950 | 积分服务      |
| service-ware     | 8960 | 仓储服务      |
| service-pay      | 8970 | 支付服务      |
| service-seckill  | 8980 | 秒杀服务      |
| service-search   | 8990 | 检索服务      |
## 公共模块(services-common)

> 各个模块需要共同使用的一些功能或属性等

### 功能列表

- 通用的返回结果
- 通用的异常定义
- 全局常量定义
- 全局处理异常
- 基础的实体类定义信息
- 权限模块用户信息
- 系统启动成功与失败事件
- 权限拦截器
- 分布式锁
- 构造树状结构数据
- 通用的工具类(密码,redis等)

## 网关服务(service-gateway)

> 微服务的统一入口，拥有授权，鉴权，请求日志等功能。

### 功能列表

- 自定义模板

## 权限服务(service-auth)

> 权限相关信息功能

## 商品服务(service-product)

> 商品相关功能

## 消息服务(service-message)

> 消息相关功能

## 订单服务(service-order)

> 订单相关功能

## 积分服务(service-integral)

> 积分相关功能 

## 支付服务(service-pay)

> 支付相关功能 

## 秒杀服务(service-seckill)

> 秒杀相关功能 