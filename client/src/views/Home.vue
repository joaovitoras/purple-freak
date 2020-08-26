<template>
  <div>
    <container tag="section">
      <PageHeader />
    </container>

    <container tag="section">
      <manifest />
    </container>

    <container tag="section">
      <p>Total de assinaturas: {{ leads_count }}</p>

      <lead-form />
    </container>
  </div>
</template>

<script>
import Container from '@/components/container';
import PageHeader from '@/components/page-header';
import Manifest from '@/components/manifest';
import LeadForm from '@/components/lead-form';

export default {
  name: 'Home',
  components: {
    PageHeader,
    Container,
    Manifest,
    LeadForm,
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
