import Vue from 'vue'
import Router from 'vue-router'
import index from './views/index.vue'
import gameshopping from './views/gameshopping.vue'
import shopping from './views/shopping.vue'
import login from './views/login.vue'
import register from './views/register.vue'
import BSMonthlySales from './views/BSMonthlySales.vue'

Vue.use(Router)

export default new Router({
  
  routes: [
    {path:"/index",component:index},
    {path:"/gameshopping",component:gameshopping},
    {path:"/shopping",component:shopping},
    {path:"/login",component:login},
    {path:"/register",component:register},
    {path:"/BSMonthlySales",component:BSMonthlySales},
  ]
})
