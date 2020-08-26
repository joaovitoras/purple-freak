<template>
  <div>
    This is the rails root injected into vue HU3
    <div v-html="content" />
  </div>
</template>

<script>
// @ is an alias to /src on import

export default {
  name: 'Home',

  data() {
    return {
      content: '',
    };
  },
  mounted() {
    this.$api('/leads')
      .then(({ data }) => {
        this.content = data;
      });
  },
};
</script>
