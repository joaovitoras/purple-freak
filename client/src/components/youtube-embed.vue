<template>
  <div>
    <iframe
      :width="width"
      :height="height"
      :src="videoUrl"
      frameborder="0"
      allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
      allowfullscreen
    />
  </div>
</template>

<script>

export default {
  props: {
    videoKey: {
      type: String,
      required: true,
    },
    width: {
      type: Number,
      required: true,
    },
    height: {
      type: Number,
      required: true,
    },
  },
  computed: {
    videoUrl() {
      return `https://www.youtube.com/embed/${this.videoKey}`;
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
