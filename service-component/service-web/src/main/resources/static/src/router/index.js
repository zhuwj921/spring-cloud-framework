import Vue from 'vue'
import Router from 'vue-router'
const _import = require('./_import_' + process.env.NODE_ENV)
// in development-env not use lazy-loading, because lazy-loading too many pages will cause webpack hot update too slow. so only in production use lazy-loading;
// detail: https://panjiachen.github.io/vue-element-admin-site/#/lazy-loading

Vue.use(Router)

/* Layout */
import Layout from '../views/layout/Layout'

/**
* hidden: true                   if `hidden:true` will not show in the sidebar(default is false)
* redirect: noredirect           if `redirect:noredirect` will no redirct in the breadcrumb
* name:'router-name'             the name is used by <keep-alive> (must set!!!)
* meta : {
    title: 'title'               the name show in submenu and breadcrumb (recommend set)
    icon: 'svg-name'             the icon show in the sidebar,
  }
**/
export const constantRouterMap = [{
		path: '/login',
		component: _import('login/index'),
		hidden: true
	},
	{
		path: '/404',
		component: _import('404'),
		hidden: true
	},

	{
		path: '/',
		component: Layout,
		redirect: '/dashboard',
		name: '首页',
		hidden: true,
		children: [{
			path: 'dashboard',
			component: _import('dashboard/index')
		}]
	},
]

export default new Router({
	// mode: 'history', //后端支持可开
	scrollBehavior: () => ({
		y: 0
	}),
	routes: constantRouterMap
})

//登入成功后加载路由
export const asyncRouterMap = [

	{
    path: '/system',
    component: Layout,
    redirect: '/system/client',
    name: '系统设置',
    meta: {},
    children: [
      { path: 'client', component: _import('client/index'), name: '客户端管理', meta: {} },
      { path: 'user', component: _import('user/index'), name: '用户管理', meta: {} },
      { path: 'menu', component: _import('menu/index'), name: '菜单管理', meta: {} },
    ],

  },



	{
		path: '/tp',
		component: Layout,
		redirect: '/tp/tree',
		name: '客户端设置',
		meta: {},
		children: [{ path: 'tree', component: _import('tree/index'), name: '树', meta: {}}]
	},
  { path: '*', redirect: '/404', hidden: true }
]
