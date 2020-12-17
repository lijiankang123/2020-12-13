import Vue from 'vue'
import App from './App.vue'
import router from './router'
import MintUI from 'mint-ui'
import 'mint-ui/lib/style.min.css'
import axios from 'axios'
import qs from 'qs'
import store from 'store'
import moment from 'moment'

Vue.config.productionTip = false;
axios.defaults.baseURL = 'http://127.0.0.1:3000';
Vue.prototype.axios = axios;
Vue.prototype.moment = moment;
Vue.prototype.qs = qs;

Vue.use(MintUI);

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
