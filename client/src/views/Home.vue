<template>
  <section>
    <PageHeader />

    <section class="section sign-hero-section">
      <container>
        <z-title
          size="large"
          class="section-sign-hero__title"
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
        <manifest />
      </container>
    </section>

    <section class="section">
      <container>
        <testimonials />
      </container>
    </section>

    <section >
      <container>
        <p>Total de assinaturas: {{ leads_count }}</p>

        <lead-form />
      </container>
    </section>

    <PageFooter />
  </section>
</template>

<script>
import PageFooter from '@/layout/page-footer';
import PageHeader from '@/layout/page-header';
import Container from '@/components/container';
import LeadForm from '@/components/lead-form';
import Manifest from '@/components/manifest';
import Introduction from '@/components/introduction';
import SignHero from '@/components/sign-hero';
import Testimonials from '@/components/testimonials';

export default {
  name: 'Home',
  components: {
    Container,
    LeadForm,
    Manifest,
    Introduction,
    SignHero,
    Testimonials,
    PageFooter,
    PageHeader,
  },
  data() {
    return {
      contents: '',
      leads_count: null,
    };
  },
  mounted() {
    this.$api('/leads')
      .then(({ data }) => {
        this.contents = data;
      });

    this.$api('/leads-overview')
      .then(({ data }) => {
        const { leads_count } = data;
        this.leads_count = leads_count;
      });
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

.section-sign-hero__title {
  margin-bottom: 40px;
}
</style>
