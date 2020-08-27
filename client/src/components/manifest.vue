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
            class="manifest-section__item-text"
            size="large"
            v-html="bullet"
          />
        </h2>
      </template>
    </div>

    <div class="manifest-section__button-wrapper">
      <z-button
        tag="a"
        variant="secondary"
        href="/manifesto.pdf"
        target="_blank"
      >
        Leia na íntegra
      </z-button>
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
    };
  },
};
</script>

<style lang="scss">
@import '@quero/zilla-core/src/utils/_index.scss';

.manifest-section__item {
  display: flex;
  align-items: center;
  justify-content: center;
  margin-bottom: 24px;
}

.manifest-section__item-text {
  max-width: 624px;
}

.manifest-section__number.manifest-section__number {
  font-size: rem(48);
  line-height: 0.9;
  margin-right: var(--space-extra-large);
}

.manifest-section__button-wrapper {
  text-align: right;
}
</style>
