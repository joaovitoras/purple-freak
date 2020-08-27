<template>
  <div>
    <z-title
      tag="h1"
      align="center"
      size="large"
      class="shares__title"
    >
      Nos ajude a alcançar mais pessoas!
    </z-title>

    <div class="shares__buttons">
      <FacebookButton
        :description="btnText"
        class="share-button--outline"
        url="https://internetpelaeducacao.com.br"
      />
      <WhatsAppButton
        text="Oi! Você sabia que 33,5% das pessoas que fizeram ENEM nos últimos 5 anos disseram não possuir acesso à internet? Ajude a gente a mudar isso! www.internetpelaeducacao.com.br"
        class="share-button--outline"
        url="https://internetpelaeducacao.com.br"
      />
      <TwitterButton
        :description="btnText"
        class="share-button--outline"
        url="https://internetpelaeducacao.com.br"
      />
      <LinkedInButton
        class="share-button--outline"
        url="https://internetpelaeducacao.com.br"
      />
      <TelegramButton
        :description="btnText"
        class="share-button--outline"
        url="https://internetpelaeducacao.com.br"
      />
    </div>
  </div>
</template>

<script>
import FacebookButton from 'vue-share-buttons/src/components/FacebookButton';
import TwitterButton from 'vue-share-buttons/src/components/TwitterButton';
import LinkedInButton from 'vue-share-buttons/src/components/LinkedInButton';
import WhatsAppButton from 'vue-share-buttons/src/components/WhatsAppButton';
import TelegramButton from 'vue-share-buttons/src/components/TelegramButton';

export default {
  components: {
    FacebookButton,
    LinkedInButton,
    TwitterButton,
    WhatsAppButton,
    TelegramButton,
  },
  data() {
    return {
      btnText: 'Ajude a democratizar o acesso online a educação, assine o manifesto:',
    };
  },
  computed: {
    videoUrl() {
      return `https://www.youtube-nocookie.com/embed/${this.videoKey}`;
    },
  },
  methods: {
    sendWhatsApp() {

    },
  },
};
</script>

<style lang="scss" scoped>
@import '@quero/zilla-core/src/utils/_index.scss';

.shares__title {
  margin-bottom: var(--space-colossal);
}

.shares__buttons {
  display: flex;
  justify-content: space-evenly;
  flex-wrap: wrap;
  flex-direction: column;

  @media (min-width: $screen-md-min) {
    flex-direction: row;
  }
}
</style>
