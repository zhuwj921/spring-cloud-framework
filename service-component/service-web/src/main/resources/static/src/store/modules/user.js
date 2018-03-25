import { login, logout } from '@/api/login'
import { getInfo } from '@/api/user'
import { getToken, setToken, removeToken, getNavkey, setNavkey } from '@/utils/auth'
const _import = require('@/router/_import_' + process.env.NODE_ENV)
const user = {
	state: {
		token: getToken(),
		name: '',
		avatar: '',
		roles: [],
		navmenus: [],
		menus: [],
		navkey: getNavkey()
	},

	mutations: {
		SET_TOKEN: (state, token) => {
			state.token = token
		},
		SET_NAME: (state, name) => {
			state.name = name
		},
		SET_AVATAR: (state, avatar) => {
			state.avatar = avatar
		},
		SET_ROLES: (state, roles) => {
			state.roles = roles
		},
		SET_NAV_MENUS: (state, navmenus) => {
			state.navmenus = navmenus
		},
		SET_MENUS: (state, menus) => {
			state.menus = menus
		},
		SET_NAVKEY: (state, navkey) => {
			state.navkey = navkey
			//更新菜单
			console.log("切换菜单")
			state.navmenus.forEach((item) => {
				if(item.key == navkey) {
					state.menus = item.children;
				}
			})
		}
	},

	actions: {
		// 登录
		Login({
			commit
		}, userInfo) {
			const username = userInfo.username.trim()
			return new Promise((resolve, reject) => {
				login(username, userInfo.password).then(response => {
					setToken(response.access_token); //存到cookie
					commit('SET_TOKEN', response.access_token);

					resolve()
				}).catch(error => {
					reject(error)
				})
			})
		},

		// 获取用户信息
		GetInfo({
			commit,
			state
		}) {
			return new Promise((resolve, reject) => {
				getInfo().then(response => {
					console.log("user info ", response)
					commit('SET_NAME', response.username);
					const navMenusData = response.navMenuList;
					if(getNavkey() == undefined) {
						if(navMenusData && navMenusData.length != 0)
							commit('SET_MENUS', navMenusData[0].children);
							commit('SET_NAVKEY', navMenusData[0].key)
							setNavkey(navMenusData[0].key)

					} else {
						navMenusData.forEach((item) => {
							if(item.key == getNavkey()) {
								commit('SET_MENUS', item.children);
							}

						})
					}
					commit('SET_NAV_MENUS', navMenusData);
					resolve(response)
				}).catch(error => {
					reject(error)
				})
			})
		},

		// 登出
		LogOut({
			commit,
			state
		}) {
			return new Promise((resolve, reject) => {
				console.log("logout .....")
				logout(state.token).then(() => {
					commit('SET_TOKEN', '')
					commit('SET_ROLES', [])
					removeToken()
					resolve()
				}).catch(error => {
					reject(error)
				})
			})
		},

		// 前端 登出
		FedLogOut({
			commit
		}) {
			return new Promise(resolve => {
				commit('SET_TOKEN', '')
				removeToken()
				resolve()
			})
		},
		// 修改导航栏选择菜单
		SelectNavkey({
			commit
		}, key) {
			return new Promise((resolve, reject) => {
				commit('SET_NAVKEY', key)
				setNavkey(key)
			})
		}
	}
}

export default user