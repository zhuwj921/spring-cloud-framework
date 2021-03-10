import request from '@/utils/request'
const BASE_PREFIX = '/api/service-workflow'

//请假接口
export function leave(data) {
    return request({
        url: BASE_PREFIX + '/auth/token',
        method: 'post',
        data: data
    })
}