import { createRouter,createWebHashHistory } from 'vue-router'

export const constantRoutes = [
  {
    path: '/login',
    component: () => import('@/views/login'),
    hidden: true,
  },

]

const router = createRouter({
  history: createWebHashHistory(),
  routes: constantRoutes,
})

export default router
