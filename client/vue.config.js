const path = require('path');

module.exports = {
  configureWebpack: {
    resolve: {
      alias: {
        './swiper/css/swiper.min.css': path.resolve(__dirname, 'node_modules/swiper/css/swiper.min.css'),
      },
    },
  },
};