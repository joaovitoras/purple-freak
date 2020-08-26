<template functional>
  <component
    :is="props.tag"
    v-if="$options.shouldDisplay(slots)"
    v-bind="data.attrs"
    class="container"
  >
    <slot />
  </component>
</template>

<script>

export default {
  name: 'UiContainer',
  props: {
    tag: {
      type: String,
      default: 'div',
    },
  },
  shouldDisplay(slots) {
    const children = slots();

    return children && children.default;
  },
};
</script>

<style lang="scss">
@import '@quero/zilla-core/src/utils/_index.scss';

.container {
  --container-side-padding: var(--space-medium);
  --container-max-width: #{$screen-lg};

  margin-left: auto;
  margin-right: auto;
  max-width: var(--container-max-width);
  padding-left: var(--container-side-padding);
  padding-right: var(--container-side-padding);
  width: 100%;
}
</style>
