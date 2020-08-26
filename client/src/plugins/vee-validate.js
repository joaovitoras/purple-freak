import {
  extend,
  localize,
  ValidationObserver,
  ValidationProvider,
} from 'vee-validate/dist/vee-validate.esm';

import { required } from 'vee-validate/dist/rules';

import Vue from 'vue';

import pt_BR from 'vee-validate/dist/locale/pt_BR.json';

export const injectVeeValidate = ({
  extend,
  localize,
  ValidationObserver,
  ValidationProvider,
}) => {
  const zillaErrors = {
    messages: {
      'required': 'Campo obrigatório',
    },
  };

  extend('required', required);

  localize({
    pt_BR: {
      ...pt_BR,
      messages: {
        ...pt_BR.messages,
        ...zillaErrors.messages,
      },
    },
  });

  localize('pt_BR');

  Vue.component('ValidationObserver', ValidationObserver);
  Vue.component('ValidationProvider', ValidationProvider);
};

injectVeeValidate({
  extend,
  localize,
  ValidationObserver,
  ValidationProvider,
});
