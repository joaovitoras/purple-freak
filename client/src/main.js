import Vue from 'vue';
import App from './App.vue';
import router from './router';
import axios from 'axios';
import './plugins/zilla';
import './plugins/vee-validate';
import moment from 'moment';

moment.locale('pt-br');

const baseURL = process.env.NODE_ENV === 'development'
  ? 'http://localhost:3000/api'
  : 'https://purple-freak.herokuapp.com/api';

Vue.use({
  install(vueInstance) {
    vueInstance.prototype.$api = axios.create({
      baseURL,
      withCredentials: true,
    });

    vueInstance.prototype.moment = moment;
  },
});

new Vue({
  router,
  render: h => h(App),
}).$mount('#app');
