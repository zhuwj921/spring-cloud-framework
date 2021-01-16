import axios from 'axios'
import {ElMessage} from 'element-plus'

import {getToken, setToken, removeToken} from './token'

const service = axios.create({
    baseURL: process.env.VUE_APP_API,
    timeout: 30000,
})
service.interceptors.request.use(config => {
    if (process.env.NODE_ENV === "development") {
        config.headers['Authorization'] = "Bearer  " + '831eec5b-71e8-4376-880a-bee4685bc462'
    } else {
        config.headers['Authorization'] = "Bearer  " + getToken();
    }
    return config
}, error => {
    console.log(error)
    Promise.reject(error).then(() => {
        ElMessage({
            message: '系统异常，请稍后在操作！',
            center: true,
            type: 'error'
        });
    })
})

service.interceptors.response.use(
    response => {

        let res = response.data;
        if (res.code !== '00000') {
            ElMessage({
                message: res.message,
                center: true,
                type: 'error'
            });
            return Promise.reject(res.message)
        }
        return res.data;
    },
    error => {
        return Promise.reject(error)
    }
)

export default service