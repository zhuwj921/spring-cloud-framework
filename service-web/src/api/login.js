import request from '@/utils/request'

const BASE_PREFIX = '/api/service-auth'

//登录接口
export function login(data) {
    return request({
        url: BASE_PREFIX + '/auth/token',
        method: 'post',
        data: data
    })
}