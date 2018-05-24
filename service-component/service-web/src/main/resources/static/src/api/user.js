import request from '@/utils/request'
//	处理用户业务模块的api 前缀为网关定义前缀
const BASE_PREFIX='/user';


//获取用户信息
export function getInfo() {
  return request({
    url: BASE_PREFIX+'/findInfo',
    method: 'get',
    params: { }
  })
}
//获取用户信息列表
export function getUserFindAll(curr,pageSize,param) {
  return request({
    url: BASE_PREFIX+'/user/findAll/'+curr+'/'+pageSize,
    method: 'get',
    params:param
  })
}
//获取菜单信息列表
export function getMenuFindAll() {
  return request({
    url: BASE_PREFIX+'/menu/findAll',
    method: 'get',
  })
}
//菜单保存接口
export function menuSave(menu) {
  return request({
    url: BASE_PREFIX+'/menu/save',
    method: 'post',
    data: menu
  })
}

//菜单编辑接口
export function menuUpdate(menu) {
  return request({
    url: BASE_PREFIX+'/menu/update',
    method: 'post',
    data: menu
  })
}
