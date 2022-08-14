<template>
  <div class="header q-my-md row justify-between col-12">
    <div class="logo col-auto">
      Hongstagram
    </div>
    <div class="col-4 gt-xs">
      <q-input
        v-model="searchInputText"
        standout="bg-grey-4"
        dense
        clearable
      >
        <template #prepend>
          <q-icon name="search" />
        </template>
      </q-input>
    </div>
    <div class="btns col-auto">
      <q-btn
        color="primary"
        label="로그인"
      />
      <q-btn
        flat
        color="primary"
        label="가입하기"
      />
    </div>
  </div>
</template>
<script setup>
import { ref } from 'vue'

const searchInputText = ref('')

</script>

<style lang="scss" scoped>
.header{

  .logo{
    font-family: 'Satisfy', cursive;
    font-size: 1.7rem;
  }

}

</style>
