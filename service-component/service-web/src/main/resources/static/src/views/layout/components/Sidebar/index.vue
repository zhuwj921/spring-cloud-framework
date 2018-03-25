<template>
  <scroll-bar >
    <el-menu mode="vertical" router unique-opened :default-active="$route.path" :collapse="isCollapse" background-color="#F0F1F3" text-color="#97989A" active-text-color="#A1A2A4">
     <template v-for="item in menus" v-if="!item.hidden">
   
   <router-link v-if="item.children&&item.children.length >= 1" :to="'/'+item.path+'/'+item.children[0].path" :key="item.children[0].label">
     <el-submenu  :index="'/'+item.path">
        <template slot="title">
           <svg-icon v-if="item.icon" :icon-class="item.icon"></svg-icon>
         	 <span v-text="item.label"></span>
        </template>
        <template v-for="itemChild in item.children" v-if="!itemChild.hidden">
        	<router-link  :to="'/'+item.path+'/'+itemChild.path" :key="itemChild.label">
        	 <el-menu-item :index="'/'+item.path+'/'+itemChild.path" >
          	<span v-text="itemChild.label"></span>
          </el-menu-item>
          </router-link>
        </template>
      </el-submenu>
    </router-link>
   
	  <router-link v-else :to="'/'+item.path" :key="item.label">
	     <el-submenu  :index="'/'+item.path">
	        <template slot="title">
	           <svg-icon v-if="item.icon" :icon-class="item.icon"></svg-icon>
	         	 <span v-text="item.label"></span>
	        </template>
	      </el-submenu>
	    </router-link>
     </template>
   </el-menu>
  </scroll-bar>
</template>

<script>
import { mapGetters } from 'vuex'

import ScrollBar from '@/components/ScrollBar'

export default {
  components: {  ScrollBar },
  computed: {
    ...mapGetters([
    	 'menus',
      'sidebar',
     
    ]),
    isCollapse() {
      return !this.sidebar.opened
    }
  }
}
</script>
