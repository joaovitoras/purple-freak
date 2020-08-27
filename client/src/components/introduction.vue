<template>
  <div>
    <z-text
      class="introduction__item"
      size="large"
      align="center"
    >
      A internet é <strong>essencial</strong> hoje em dia.
      <br>
      Com a pandemia, passamos a fazer tudo online, inclusive, <strong>estudar.</strong>
    </z-text>

    <z-text
      class="introduction__item"
      size="large"
      align="center"
    >
      Mas, você sabia que <strong>39% dos alunos</strong> de escolas públicas urbanas do Brasil não tem acesso a computadores?
      <br>
      Ou que <strong>33,5% dos inscritos no ENEM</strong> nos últimos 5 anos não possuem acesso a internet?
    </z-text>

    <z-text
      class="introduction__item"
      size="large"
      align="center"
    >
      É contra isso que queremos lutar.
      <br>
      <strong class="introduction__highlight">Assine o manifesto e junte-se a nós!</strong>
    </z-text>
  </div>
</template>

<script>
export default {

};
</script>

<style lang="scss">
.introduction__item.introduction__item {
  font-size: 24px;

  &:not(:last-child) {
    margin-bottom: 16px;
  }
}

.introduction__highlight {
  font-size: 32px;
}
</style>
