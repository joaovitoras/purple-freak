import Vue from 'vue';
import App from './App.vue';
import router from './router';
import axios from 'axios';

Vue.config.productionTip = false;

const baseURL = process.env.NODE_ENV === 'development'
  ? 'http://localhost:3000/api'
  : 'https://purple-freak.herokuapp.com/api';

Vue.use({
  install(vueIntance) {
    vueIntance.prototype.$api = axios.create({
      baseURL,
      withCredentials: true,
    });
  },
});

new Vue({
  router,
  render: h => h(App),
}).$mount('#app');
