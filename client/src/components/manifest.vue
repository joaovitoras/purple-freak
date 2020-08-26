<template>
  <div>
    <div
      v-for="(bullet, index) in bullets"
      :key="index"
    >
      {{ index + 1 }} - {{ bullet }}
    </div>
  </div>
</template>

<script>
import bullets from '@/content/manifest-bullets.json';
export default {
  data() {
    return {
      bullets,
    };
  },
};
</script>
