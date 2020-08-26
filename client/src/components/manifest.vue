<template>
  <div class="manifest-section">
    <div class="manifest-section__video">
      Video
    </div>
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
            class="manifest-section__number"
          >
            {{ index + 1 }}
          </z-text>
          <z-text>{{ bullet }}</z-text>
        </h2>
      </template>
    </div>
  </div>
</template>

<script>
import bullets from '@/content/manifest-bullets.json';
export default {
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

.manifest-section__video, .manifest-section__items {
  flex-basis: 0;
  flex-grow: 1;
}

.manifest-section__item {
  display: flex;
  align-items: flex-start;
  margin-bottom: var(--space-large);
}

.manifest-section__number.manifest-section__number {
  font-size: rem(62);
  line-height: 1;
  margin-right: var(--space-medium);
}
</style>
