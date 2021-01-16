import { createRouter,createWebHashHistory } from 'vue-router'

export const constantRoutes = [
  {
    path: '/',
    component: () => import('@/views/login')
  },
  {
    path: '/mall',
    component: () => import('@/views/mall')
  },
  {
    path: '/login',
    component: () => import('@/views/login')
  },

]

const router = createRouter({
  history: createWebHashHistory(),
  routes: constantRoutes,
})

export default router
