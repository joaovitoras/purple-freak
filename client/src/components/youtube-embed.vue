<template>
  <iframe
    :width="width"
    :height="height"
    :src="videoUrl"
    frameborder="0"
    allowfullscreen
  />
</template>

<script>

export default {
  props: {
    videoKey: {
      type: String,
      required: true,
    },
    width: {
      type: [Number, String],
      required: true,
    },
    height: {
      type: Number,
      required: true,
    },
  },
  computed: {
    videoUrl() {
      return `https://www.youtube-nocookie.com/embed/${this.videoKey}`;
    },
  },
};
</script>

<style lang="scss" scoped>
.page-footer {
  height: 70px;
  background-color: blue;
}
</style>
