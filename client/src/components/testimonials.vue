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

    <z-carousel>
      <z-card
        v-for="item in testimonials"
        :key="item.id"
      >
        <z-text><strong>"</strong>{{ item.text }}<strong>"</strong></z-text>
        <br>
        — {{ item.full_name }}
      </z-card>
    </z-carousel>

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
export default {
  data() {
    return {
      open: false,
      testimonials: [],
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
  },
};
</script>
