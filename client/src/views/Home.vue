<template>
  <section>
    <PageHeader />

    <container tag="section">
      <manifest />
    </container>

    <container tag="section">
      <p>Total de assinaturas: {{ leads_count }}</p>

      <lead-form />
    </container>

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

</style>
