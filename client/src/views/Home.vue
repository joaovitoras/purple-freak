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
    fetch(this.$apiHost, { credentials: 'include' })
      .then(response => response.text())
      .then((response) => {
        this.content = response;
      });
  },
};
</script>
