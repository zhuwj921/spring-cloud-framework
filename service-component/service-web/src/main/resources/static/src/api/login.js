import request from '@/utils/request'
//	处理核心业务模块的api 前缀为网关定义前缀
const BASE_PREFIX='/authorization';
//登入接口
export function login(username, password) {
  return request({
    url: BASE_PREFIX+'/login',
    method: 'post',
    data: {
      username,
      password,
      
    }
  })
}

//退出登入接口 暂时只坐前端退出
export function logout(accessToken) {
  return request({
    url: BASE_PREFIX+'/logouting',
    method: 'get',
    params:{
    	accessToken
    }
  })
}

//获取客户端信息列表
export function getClientFindAll(curr,pageSize,param) {
  return request({
    url: BASE_PREFIX+'/client/findAll/'+curr+'/'+pageSize,
    method: 'get',
    params:param
  })
}