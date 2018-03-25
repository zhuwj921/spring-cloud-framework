<template>
  <div class="app-wrapper" :class="{hideSidebar:!sidebar.opened}">
  	  <navbar></navbar>
    <sidebar class="sidebar-container"></sidebar>
    <div class="main-container">
    	<div style="padding: 15px;">
    		<breadcrumb></breadcrumb>
    		 <app-main></app-main>
    	</div>
    </div>
  </div>
</template>

<script>
import { Navbar, Sidebar, AppMain } from '@/views/layout/components'
import Breadcrumb from '@/components/Breadcrumb'
export default {
  name: 'layout',
  components: {
    Navbar,
    Sidebar,
    AppMain,
    Breadcrumb
  },
  computed: {
    sidebar() {
      return this.$store.state.app.sidebar
    }
  }
}
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
@import "src/styles/mixin.scss";
.app-wrapper {
  @include clearfix;
  position: relative;
  height: 100%;
  width: 100%;
}
</style>
