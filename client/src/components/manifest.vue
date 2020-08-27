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

          <z-text
            size="large"
            v-html="bullet"
          />
        </h2>
      </template>
    </div>
    <z-button
      tag="a"
      href="/manifesto.pdf"
      target="_blank"
    >
      Link para o manifesto
    </z-button>
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
    };
  },
};
</script>

<style lang="scss">
@import '@quero/zilla-core/src/utils/_index.scss';

.manifest-section {
  display: flex;
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
