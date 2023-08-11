import { createRouter, createWebHistory, type RouteLocationNormalized } from 'vue-router'
import HomeView from '@/views/HomeView.vue'
import { useUserStore } from '@/stores/user'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView,
      meta: {
        requiredAuth: true
      }
    },
    {
      path: '/login',
      name: 'login',
      meta: {
        requiredAuth: false
      },
      component: () => import('@/views/LoginView.vue')
    }
  ]
})

router.beforeEach((to: RouteLocationNormalized) => {
  const stores = useUserStore()
  if (to.meta.requiredAuth && stores.token.length == 0) {
    return {
      path: '/login',
      query: { redirect: to.fullPath }
    }
  }
})

export default router
