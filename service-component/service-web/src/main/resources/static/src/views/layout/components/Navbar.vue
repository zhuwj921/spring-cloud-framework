<template>
	<el-row style="background-color: #282828;z-index: 2000;border: 0;position: fixed;width: 100%;">
		<el-col :span="24">
			<div style="float: left;display: table-cell;vertical-align: middle;padding: 8px;margin-left: 12px; ">
				<img class="webImg" src="../../../assets/logo.png" >
			</div>
			
			<div class="webtitle">后台管理系统</div>
			<div style="float: left;margin-left: 100px;">
			<el-menu :default-active="navkey" class="navbar naver-border" mode="horizontal" @select="handleSelect" background-color="#282828" text-color="#858587" active-text-color="#409EFF ">
				<template v-for="item in navmenus">
					<el-menu-item :index="item.key"><span v-text="item.label" style="font-size: 16px;"></span></el-menu-item>
				</template>
			</el-menu>
			</div>
			<div style="float:right">
				<el-menu  class="navbar naver-border" mode="horizontal" @select="handleLogout" background-color="#2C2C2C" text-color="#FBFBFB" active-text-color="#2C2C2C ">
				<el-submenu style="float: right;" index="leave">
					<template slot="title">超级管理员</template>
					<el-menu-item index="loguthandle">退出</el-menu-item>
				</el-submenu>
				<img class="user-avatar" src="../../../assets/avator.png">
			</el-menu>
			</div>
		</el-col>

	</el-row>
	<!--  <hamburger class="hamburger-container" :toggleClick="toggleSideBar" :isActive="sidebar.opened"></hamburger>-->
	<!-- <breadcrumb></breadcrumb>-->

</template>

<script>
	import { mapGetters } from 'vuex'
	import Breadcrumb from '@/components/Breadcrumb'
	import Hamburger from '@/components/Hamburger'
	export default {
		data() {
			return {
			};
		},
		components: {
			Breadcrumb,
			Hamburger
		},
		computed: {
			...mapGetters([
				'sidebar',
				'avatar',
				'navmenus',
				'navkey'
			])
		},
		methods: {
			toggleSideBar() {
				this.$store.dispatch('ToggleSideBar')
			},
			handleLogout(key,keyPath) {
				this.$store.dispatch('LogOut').then(() => {
					location.reload() // 为了重新实例化vue-router对象 避免bug
				})
			},
			//切换菜单栏选择
			handleSelect(key, keyPath) {
				console.log("change navmenu"+key)
				this.$store.dispatch('SelectNavkey',key).then(() => {
						
				})
			}
		}
	}
</script>

<style>
	.user-avatar {
		height: 45px;
		width: 45px;
		float: right;
		margin-top: 8px;
		border-radius: 50%;
	}
	
	.naver-border {
		border-bottom: 0;
	}
	
	.webtitle {
		float: left;
		height: 60px;
		line-height: 60px;
		margin: 0;
		cursor: pointer;
		position: relative;
		-webkit-box-sizing: border-box;
		box-sizing: border-box;
		border-bottom: 2px solid transparent;
		color: white;
		color: rgb(255, 255, 255);
		border-bottom-color: transparent;
		background-color:#282828;
		font-size: 18px;;
	}
	.webImg{
		height: 45px;;
		width: 116px;
		
	}
</style>