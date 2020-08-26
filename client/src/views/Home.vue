<template>
  <div>
    <container tag="section">
      <PageHeader />
    </container>

    <container tag="section">
      <manifest />
    </container>

    <container tag="section">
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
    };
  },
  mounted() {
    this.$api('/leads')
      .then(({ data }) => {
        this.contents = data;
      });
  },
};
</script>

<style lang="scss">

</style>
