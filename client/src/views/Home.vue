<template>
  <section>
    <PageHeader />

    <section class="section manifest">
      <container>
        <manifest />
      </container>
    </section>

    <section>
      <container>
        <p>Total de assinaturas: {{ leads_count }}</p>

        <lead-form />
      </container>
    </section>

    <PageFooter />
  </section>
</template>

<script>
import Container from '@/components/container';
import LeadForm from '@/components/lead-form';
import Manifest from '@/components/manifest';
import PageFooter from '@/layout/page-footer';
import PageHeader from '@/layout/page-header';

export default {
  name: 'Home',
  components: {
    Container,
    LeadForm,
    Manifest,
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

.manifest {
  background-color: var(--blue2);
}

.section  {
  padding-top: var(--space-colossal);
  padding-bottom: var(--space-colossal);
  color: white
}
</style>
