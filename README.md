# spring-cloud-framework 
> SpringCloud 微服务学习使用与实践，结合相关业务进行验证等。
> 使用nacos作为服务注册中心，[nacos文档](https://nacos.io/zh-cn/index.html)
> [阿里云maven](https://packages.aliyun.com/maven)
## 模块版本 

| 名称   | 版本                  |
| ------ | -------------------- |
| spring-boot        | 2.3.7.RELEASE         |
| spring-cloud       | Hoxton.SR9          |
| spring-cloud-alibaba       | 2.2.3.RELEASE        |
| lombok | 1.18.12          |
| hutool| 5.5.7|

## 服务列表

| 名称   | 端口  |描述                |
| ------ | --- |--------------------|
| service-common |  |模块公用功能和属性|
| service-gateway | 8900 |网关服务|
| service-auth | 8910 |权限服务|
| service-mall | 8920 |商城服务|



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

