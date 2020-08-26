module.exports = {
  root: true,
  env: {
    node: true,
  },
  extends: [
    '@quero/eslint-config-vue',
    'plugin:vuejs-accessibility/recommended',
  ],
  plugins: [
    '@quero/vue',
    'vue',
    'vuejs-accessibility',
  ],
  parserOptions: {
    parser: 'babel-eslint',
  },
  rules: {
    'no-console': process.env.NODE_ENV === 'production' ? 'warn' : 'off',
    'no-debugger': process.env.NODE_ENV === 'production' ? 'warn' : 'off',
  },
};
