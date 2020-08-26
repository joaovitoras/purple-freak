import Vue from 'vue';
import App from './App.vue';
import router from './router';

Vue.config.productionTip = false;

const apiHost = process.env.NODE_ENV === 'development'
  ? 'http://localhost:3000'
  : 'https://purple-freak.herokuapp.com/';

Vue.use({
  install(vueIntance) {
    vueIntance.prototype.$apiHost = apiHost;
  },
});

new Vue({
  router,
  render: h => h(App),
}).$mount('#app');
