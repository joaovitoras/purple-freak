<template>
  <section>
    <PageHeader />

    <section class="section sign-hero-section">
      <container>
        <z-title
          size="large"
          class="section__title"
          align="center"
        >
          Um movimento pelo acesso ilimitado a conteúdos de educação
        </z-title>

        <sign-hero />
      </container>
    </section>

    <section class="section introduction-section">
      <container>
        <introduction />
      </container>
    </section>

    <section class="section manifest-section">
      <container>
        <z-title
          size="extra-large"
          class="section__title"
          align="center"
        >
          O que defendemos?
        </z-title>

        <manifest />
      </container>
    </section>

    <section class="section">
      <container>
        <testimonials />
      </container>
    </section>

    <section class="section share-section">
      <container>
        <shares />
      </container>
    </section>

    <PageFooter />
  </section>
</template>

<script>
import PageFooter from '@/layout/page-footer';
import PageHeader from '@/layout/page-header';
import Container from '@/components/container';
import Manifest from '@/components/manifest';
import Shares from '@/components/shares';
import Introduction from '@/components/introduction';
import SignHero from '@/components/sign-hero';
import Testimonials from '@/components/testimonials';

export default {
  name: 'Home',
  components: {
    Container,
    Manifest,
    Introduction,
    SignHero,
    Testimonials,
    Shares,
    PageFooter,
    PageHeader,
  },
};
</script>

<style lang="scss">
@import '@quero/zilla-core/src/zilla.scss';
@import '@quero/zilla-core/src/themes/default/colors.scss';
@import 'reset-css';
@import '@/assets/global.scss';

.section  {
  padding-top: var(--space-colossal);
  padding-bottom: var(--space-colossal);
}

.section__title {
  margin-bottom: var(--space-jumbo);
}

.introduction-section {
  color: white;
  background-color: var(--blue2);
}

.manifest-section {
  background-color: var(--blue1);
}

.sign-hero-section {
  color: white;
  background-color: var(--cyan);
  padding-top: 48px;
}

.share-section {
  background-color: var(--blue1);
}
</style>
