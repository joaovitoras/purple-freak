<template>
  <div>
    This is the rails root injected into vue HU3
    <z-carousel
      v-if="contents"
    >
      <z-card
        v-for="(content, index) in contents"
        :key="index"
      >
        {{ content.full_name }} - {{ content.profession }}
        {{ content.created_at }}
      </z-card>
    </z-carousel>
  </div>
</template>

<script>
// @ is an alias to /src on import

export default {
  name: 'Home',

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
