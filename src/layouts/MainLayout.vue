<template>
  <q-layout view="hHh lpR fFf">
    <q-header
      class="bg-white text-dark full-width"
      bordered
      height-hint="98"
    >
      <MainHeader />
    </q-header>

    <q-page-container>
      <router-view />
    </q-page-container>

    <!-- <q-footer
      elevated
      class="bg-grey-8 text-white"
    >
      <q-toolbar>
        <q-toolbar-title>
          <q-avatar>
            <img src="https://cdn.quasar.dev/logo-v2/svg/logo-mono-white.svg">
          </q-avatar>
          <div>Title</div>
        </q-toolbar-title>
      </q-toolbar>
    </q-footer>
  </q-layout> -->
  </q-layout>
</template>

<script setup>
import MainHeader from '../components/MainHeader.vue'
</script>

<style lang="scss" scoped>

$sm-breakpoint: 930px;
.q-layout{
  max-width: 95%;
  margin: 0 auto;

  .q-header{
    left: auto;
    right: auto;
    max-width: 95%;
  }
}
@media (min-width: $sm-breakpoint) {
  .q-layout{
    max-width: 910px;

     .q-header{
    max-width: 910px;
  }
  }
}

</style>
