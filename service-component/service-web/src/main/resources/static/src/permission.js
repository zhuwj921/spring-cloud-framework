import router from './router'
import store from './store'
import NProgress from 'nprogress' // Progress 进度条
import 'nprogress/nprogress.css' // Progress 进度条样式
import { Message } from 'element-ui'
import { getToken } from '@/utils/auth' // 验权
import { asyncRouterMap } from '@/router'
const whiteList = ['/login'] // 不重定向白名单

router.beforeEach((to, from, next) => {
	NProgress.start()
	console.log(" come permission ... ")
	if(getToken()) {

		if(to.path === '/login') {
			next({
				path: '/'
			})
		} else {
			if(store.getters.name==''||store.getters.name==undefined) {
				store.dispatch('GetInfo').then(res => { // 拉取用户信息
					router.addRoutes(asyncRouterMap);
					next({ ...to, replace: true }) //确保路由信息添加完毕后
				}).catch(() => {
					store.dispatch('FedLogOut').then(() => {
						Message.error('验证失败,请重新登录')
						next({
							path: '/login'
						})
					})
				})
			} else {

				next()
			}
		}
	} else {
		if(whiteList.indexOf(to.path) !== -1) {
			next()
		} else {
			next('/login')
			NProgress.done()
		}
	}
})

router.afterEach(() => {
	NProgress.done() // 结束Progress
})