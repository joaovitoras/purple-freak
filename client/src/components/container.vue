<template>
  <component
    :is="tag"
    v-if="$slots.default"
    class="container"
  >
    <slot />
  </component>
</template>

<script>

export default {
  name: 'UiContainer',
  inheritAttrs: true,
  props: {
    tag: {
      type: String,
      default: 'div',
    },
  },
};
</script>

<style lang="scss">
@import '@quero/zilla-core/src/utils/_index.scss';

.container {
  --container-side-padding: var(--space-large);
  --container-max-width: 1350px;

  margin-left: auto;
  margin-right: auto;
  max-width: var(--container-max-width);
  padding-left: var(--container-side-padding);
  padding-right: var(--container-side-padding);
  width: 100%;
}
</style>
