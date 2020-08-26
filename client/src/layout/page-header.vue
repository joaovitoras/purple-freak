<template>
  <section class="page-header">
    <container tag="header">
      <div class="page-header__logo-wrapper">
        <img
          src="@/assets/Logo__negativo.svg"
          alt="logo"
          height="100"
          class="page-header__logo"
        >
      </div>
    </container>
  </section>
</template>

<script>
import Container from '@/components/container';

export default {
  components: {
    Container,
  },
};
</script>

<style lang="scss" scoped>
.page-header {
  background-color: var(--blue);
}

.page-header__logo-wrapper {
  display: flex;
  justify-content: flex-start;
}

.page-header__logo {
  padding: var(--space-medium);
}
</style>
