<template>
  <div v-if="testimonials">
    <z-title
      tag="h1"
      align="center"
      size="large"
    >
      Quem sente o problema na pele
    </z-title>

    <z-button
      variant="secondary"
      @click="open = true"
    >
      Envie seu depoimento
    </z-button>

    <z-carousel v-if="testimonials">
      <z-card
        v-for="item in testimonials"
        :key="item.id"
      >
        <z-text v-if="item.kind==='text'">
          <strong>"</strong>{{ item.text }}<strong>"</strong>
        </z-text>
        <template v-else>
          <z-button
            variant="tertiary"
            class="testimonial__video"
            behavior="block"
            :style="{
              backgroundImage: `url(https://img.youtube.com/vi/${youtubeParser(item.url)}/default.jpg)`
            }"
            @click="currentVideoUrl = item.url"
          >
            <z-icon
              icon="play"
              size="jumbo"
              title="Video do Youtube"
            />
          </z-button>
        </template>
        <br>
        — {{ item.full_name }}
      </z-card>
    </z-carousel>

    <z-modal
      v-if="currentVideoUrl"
      :open="Boolean(currentVideoUrl)"
      class="testimonial__video-modal"
      @closed="currentVideoUrl = null"
    >
      <YoutubeEmbed
        :video-key="youtubeParser(currentVideoUrl)"
        :height="350"
        :width="560"
      />
    </z-modal>

    <z-modal
      :open="open"
      :closable="true"
      @closed="open = false"
    >
      <form @submit.prevent="postTestimony">
        <z-input-field
          #default="{ hasError }"
          label="Nome (Obrigatório)"
          rules="required"
        >
          <z-input
            v-model="testimonial.full_name"
            :has-error="hasError"
            placeholder="Insira eu nome"
          />
        </z-input-field>

        <z-input-field
          #default="{ hasError }"
          label="Email (Obrigatório)"
          rules="required"
        >
          <z-input
            v-model="testimonial.email"
            :has-error="hasError"
            placeholder="Insira seu email"
          />
        </z-input-field>

        <z-input-field
          label="Tipo de depoimento"
          rules="required"
        >
          <z-dropdown-input
            v-model="testimonial.kind"
            :options="[['text', 'Texto'], ['youtube', 'Video do youtube']]"
          />
        </z-input-field>

        <z-input-field
          v-if="testimonial.kind === 'text'"
          #default="{ hasError }"
          label="Texto (Obrigatório)"
          rules="required"
        >
          <z-textarea
            v-model="testimonial.text"
            :has-error="hasError"
            placeholder="Insira seu depoimento"
          />
        </z-input-field>

        <z-input-field
          v-if="testimonial.kind === 'youtube'"
          #default="{ hasError }"
          label="Link do youtube"
          rules="required"
        >
          <z-input
            v-model="testimonial.url"
            :has-error="hasError"
            placeholder="Insira o link completo"
          />
        </z-input-field>

        <z-button
          :disabled="!valid"
          behavior="block"
        >
          Enviar depoimento
        </z-button>
      </form>
    </z-modal>
  </div>
</template>

<script>
import YoutubeEmbed from '@/components/youtube-embed';

export default {
  components: {
    YoutubeEmbed,
  },
  data() {
    return {
      open: false,
      videoOpen: false,
      currentVideoUrl: null,
      testimonials: null,
      testimonial: {
        kind: 'text',
        full_name: null,
        email: null,
        text: null,
        url: null,
      },
    };
  },
  computed: {
    valid() {
      const testimonial = this.testimonial;

      return testimonial.full_name && testimonial.email && (testimonial.text || testimonial.url);
    },
  },
  mounted() {
    this
      .$api
      .get('/student_testimonies')
      .then(({ data }) => {
        this.testimonials = data;
      });
  },
  methods: {
    postTestimony() {
      this
        .$api
        .post('/student_testimonies', { student_testimony: this.testimonial })
        .then(() => {
          this.open = false;
        });
    },
    youtubeParser(key) {
      const regExp = /^.*((youtu.be\/)|(v\/)|(\/u\/\w\/)|(embed\/)|(watch\?))\??v?=?([^#&?]*).*/;
      const match = key.match(regExp);
      return (match && match[7].length === 11) ? match[7] : key;
    },
  },
};
</script>

<style lang="scss" scoped>
.testimonial__video {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 132px;
  position: relative;
  background-repeat: no-repeat;
  box-shadow:inset 0 0 0 300px rgba(170, 218, 221, 0.3);
  background-blend-mode: overlay;
  background-position: center;
  background-size: cover;

}

.testimonial__video-modal ::v-deep {
  .z-modal__dialog {
    padding: 0;
  }
}
</style>
