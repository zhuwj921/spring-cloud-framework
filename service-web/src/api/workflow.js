import request from '@/utils/request'

const BASE_PREFIX = '/api/service-workflow'

//任务列表接口
export function page(data) {
    return request({
        url: BASE_PREFIX + '/task/page',
        method: 'post',
        data: data
    })
}