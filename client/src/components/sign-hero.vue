<template>
  <div class="sign-hero">
    <div class="">
      <!-- <z-text
        size="large"
      >
        A internet é essencial hoje em dia. Com a pandemia, passamos a fazer tudo online, inclusive, <strong>estudar.</strong>
      </z-text>

      <z-text
        size="large"
      >
        Mas, você sabia que <strong>39% dos alunos</strong> de escolas públicas urbanas do Brasil não tem acesso a computadores? Ou que <strong>33,5% dos inscritos no ENEM</strong> nos últimos 5 anos não possuem acesso a internet?
      </z-text>

      <z-text
        size="large"
      >
        É contra isso que queremos lutar. <strong>Assine o manifesto e junte-se a nós!</strong>
      </z-text> -->

      <!-- OU -->

      <YoutubeEmbed
        video-key="rHax1Pg-iSM"
        :height="315"
        :width="560"
      />
    </div>

    <div class="sign-hero__leads-form">
      <form @submit.prevent="signManifest">
        <z-input-field
          #default="{ hasError }"
          label="Nome (Obrigatório)"
          rules="required"
        >
          <z-input
            v-model="lead.name"
            :has-error="hasError"
            placeholder="Insira eu nome"
          />
        </z-input-field>

        <z-input-field
          #default="{ hasError }"
          label="Email (Obrigatório)"
          rules="required"
        >
          <z-input
            v-model="lead.email"
            :has-error="hasError"
            placeholder="Insira seu email"
          />
        </z-input-field>

        <z-input-field
          #default="{ hasError }"
          label="Profissão (Obrigatório)"
          rules="required"
        >
          <z-input
            v-model="lead.profission"
            :has-error="hasError"
            placeholder="Insira sua profissão"
          />
        </z-input-field>

        <z-button
          class="sign-hero__leads-form-submit"
          disabled
          icon="pencil-alt"
          behavior="block"
        >
          Assinar manifesto
        </z-button>
      </form>

      <div class="sign-hero__leads-timeline">
        <z-text
          size="small"
          class="sign-hero__leads-timeline-title"
        >
          Ultimas assinaturas
        </z-text>

        <div
          v-for="i in 2"
          :key="i"
          class="sign-hero__leads-timeline-item"
        >
          <z-avatar
            size="extra-small"
            class="sign-hero__leads-timeline-avatar"
          />

          <z-text>
            Eaee, assinei
          </z-text>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import YoutubeEmbed from '@/components/youtube-embed';

export default {
  components: {
    YoutubeEmbed,
  },
  data() {
    return {
      lead: {
        name: null,
        email: null,
        profission: null,
      },
    };
  },
  methods: {
    signManifest() {
      this
        .$api
        .post('/leads', { lead: this.lead })
        .then(a => console.log(a))
        .catch(a => console.log(a));
    },
  },
};
</script>

<style lang="scss">
@import '@quero/zilla-core/src/utils/_index.scss';

.sign-hero {
  display: flex;
  justify-content: space-between;
}

.sign-hero__leads-form {
  margin-right: var(--space-extra-large);
  min-width: 250px;
}

.sign-hero__leads-form-submit {
  &.z-button:disabled {
    animation: background-cicle 2s 2;

    .z-button__text, .z-icon {
      color: inherit;
    }

    @keyframes background-cicle {
      0% {
        background-color: var(--color-neutral-light-gray);
      }
      50% {
        background-color: var(--red);
        color: var(--color-white);
      }
      100% {
        background-color: var(--color-neutral-light-gray);
      }
    }
  }
}

.sign-hero__leads-timeline {
  margin-top: var(--space-medium);
  display: flex;
  flex-direction: column;
  min-width: 200px;
}

.sign-hero__leads-timeline-item {
  display: flex;

  &:not(:last-child) {
    margin-bottom: var(--space-medium);
  }
}

.sign-hero__leads-timeline-avatar {
  margin-right: var(--space-small);
}

.sign-hero__leads-timeline-title {
  margin-bottom: var(--space-small);
}
</style>
