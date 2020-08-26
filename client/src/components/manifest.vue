<template>
  <div class="manifest-section">
    <div class="manifest-section__items">
      <template
        v-for="(bullet, index) in bullets"
      >
        <h2
          :key="index"
          class="manifest-section__item"
        >
          <z-text
            tag="span"
            weight="bold"
            size="large"
            class="manifest-section__number"
          >
            {{ index + 1 }}
          </z-text>
          <z-text>{{ bullet }}</z-text>
        </h2>
      </template>
    </div>
    <div class="manifest-section__leads-form">
      <form @submit.prevent="signManifest">
        <z-input-field label="Nome">
          <z-input
            v-model="lead.name"
            placeholder="Insira eu nome"
          />
        </z-input-field>
        <z-input-field label="Email">
          <z-input
            v-model="lead.email"
            placeholder="Insira seu email"
          />
        </z-input-field>
        <z-input-field label="Profissão">
          <z-input
            v-model="lead.profission"
            placeholder="Insira sua profissão"
          />
        </z-input-field>
        <z-button
          class="manifest-section__leads-form-submit"
          icon="pencil-alt"
          behavior="block"
        >
          Assinar manifesto
        </z-button>
      </form>
    </div>

    <div class="manifest-section__leads-timeline">
      <div
        v-for="i in 3"
        :key="i"
        class="manifest-section__leads-timeline-item"
      >
        <z-avatar
          size="extra-small"
          class="manifest-section__leads-timeline-avatar"
        />

        <z-text>
          Eaee, assinei
        </z-text>
      </div>
    </div>
  </div>
</template>

<script>
import bullets from '@/content/manifest-bullets.json';

export default {
  components: {
  },
  data() {
    return {
      bullets,
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

.manifest-section {
  display: flex;
}

.manifest-section__leads-form {
  margin-right: var(--space-extra-large);
  min-width: 250px;
}

.manifest-section__leads-form-submit {
  // --button-background: red;
}

.manifest-section__leads-timeline {
  display: flex;
  flex-direction: column;
  min-width: 200px;
}

.manifest-section__leads-timeline-item {
  display: flex;
  padding: var(--space-small) var(--space-medium);
  margin-bottom: var(--space-medium);
}

.manifest-section__leads-timeline-avatar {
  margin-right: var(--space-small);
}

.manifest-section__item {
  display: flex;
  align-items: flex-start;
  margin-bottom: var(--space-colossal);
  margin-right: var(--space-jumbo);
}

.manifest-section__number.manifest-section__number {
  font-size: rem(60);
  line-height: 0.9;
  margin-right: var(--space-extra-large);
}
</style>
