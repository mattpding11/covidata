  import Vue from 'vue'
import Router from 'vue-router'
import nProgress from 'nprogress'
import Home from '../views/Home.vue'
import About from '../views/About.vue'
import Hospitals from '../views/Hospitals.vue';
import Information from '../views/Information.vue';
import Users from '../views/Users.vue';

Vue.use(Router)

const router = new Router({
  mode: 'history',
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home
    },
    {
      path: '/nosotros',
      name: 'about',
      component: About
    },
    {
      path: '/hospitales',
      name: 'hospitals',
      component: Hospitals
    },
    {
      path: '/informacion',
      name: 'information',
      component: Information,
    },
    {
      path: '/usuarios',
      name: 'users',
      component: Users
    }
  ]
})

router.beforeEach((to, route, next) => {
  nProgress.start()
  next()
})

router.afterEach(() => {
  nProgress.done()
})

export default router

/*

// route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ //'../views/About.vue')
