import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Login from '../views/Login'
import Register from '../views/Register'
import Order from '../views/Order'
import Details from '../views/Details'
import Eval from '../views/Eval'
import Shopcart from '../views/Shopcart'
import Index from '../views/Index'
import Register1 from '../views/Register1'
import Login1 from '../views/Login1'

Vue.use(VueRouter)

const routes = [
  {
    path:'/login1',
    component:Login1
  },
  {
    path:'/register1',
    component:Register1
  },
  {
    path:'/index',
    component:Index
  },
  {
    path:'/shopcard',
    component:Shopcart
  },
  {
    path:'/eval',
    component:Eval
  },

  {
    path:'/details',
    component:Details
  },
  {
    path:'/order',
    component:Order
  },
  {
    path:'/register',
    component:Register
  },
  {
    path:'/login',
    component:Login
  },
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
