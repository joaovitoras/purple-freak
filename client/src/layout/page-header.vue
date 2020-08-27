<template>
  <section class="page-header">
    <container tag="header">
      <div class="page-header__logo-wrapper">
        <img
          src="@/assets/Logo__negativo.svg"
          alt="logo"
          :height="windowHeight()"
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
  methods: {
    windowHeight() {
      if (window.innerWidth >= 1024) {
        return 100;
      }

      return 90;
    },
  },
};
</script>

<style lang="scss" scoped>
.page-header {
  background-color: var(--blue2);
}

.page-header__logo-wrapper {
  display: flex;
  justify-content: flex-start;
}

.page-header__logo {
  padding: var(--space-medium);
}
</style>
