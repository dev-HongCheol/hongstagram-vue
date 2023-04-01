<template>
  <div class="q-py-md">
    <div class="row">
      <div class="col-4 text-center">
        <q-avatar
          :class="[$q.screen.xs ? 'xs-avatar' : 'avatar']"
        >
          <img
            src="https://pbs.twimg.com/profile_images/1374979417915547648/vKspl9Et_400x400.jpg"
          >
        </q-avatar>
      </div>
      <div class="col user-porfile">
        <div class="row">
          <div class="text-h4 text-weight-thin col-12 col-sm-auto">
            dlwlrma
            <q-icon
              name="check_circle"
              color="blue-6"
              size="0.7em"
              class="q-mr-lg"
            />
          </div>
          <div class="col-12 col-sm-6">
            <q-btn
              outline
              style="color: gray;"
              label="팔로우"
              dense
              :class="[$q.screen.xs ? 'btn-mobile' : '']"
            />
          </div>
        </div>

        <div class="row user-count-info q-my-md gt-xs">
          <div class="">
            게시물 <b>640</b>
          </div>
          <div class="">
            팔로워 <b>27.3백만</b>
          </div>
          <div class="col">
            팔로우 <b>111</b>
          </div>
        </div>

        <div class="user-info gt-xs">
          <div>
            <b>이지금 IU</b>
          </div>
          <div>
            strawberrymoon1❤️❤️🍓❤️❤️
          </div>
          <div>
            <a href="youtu.be/sqgxcCjD04s">youtu.be/sqgxcCjD04s</a>
          </div>
        </div>
      </div>
    </div>

    <div class="sm-profile lt-sm q-mt-md">
      <div class="user-info">
        <div>
          <b>이지금 IU</b>
        </div>
        <div>
          strawberrymoon❤️❤️🍓❤️❤️
        </div>
        <div>
          <a href="youtu.be/sqgxcCjD04s">youtu.be/sqgxcCjD04s</a>
        </div>
      </div>
      <div class="user-count-info q-mt-md q-py-md text-center">
        <div class="row text-grey">
          <div class="col">
            게시물
          </div>
          <div class="col">
            팔로워
          </div>
          <div class="col">
            팔로우
          </div>
        </div>
        <div class="row text-weight-bolder">
          <div class="col">
            640
          </div>
          <div class="col">
            27.3M
          </div>
          <div class="col">
            111
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script setup>
import { useQuasar } from 'quasar'
const $q = useQuasar()

</script>

<style lang="scss" scoped>
.user-porfile{
  font-size: 16px;
  .user-count-info{
    div:not(:last-child){
      margin-right: 3rem;
    }
  }
}

.btn-mobile{
  width: 200px;
}
.avatar{
  width: 150px;
  height: 150px;
}

.xs-avatar{
  width: 75px;
  height: 75px;
}

.sm-profile{
  .user-count-info{
    border-top: 1px solid rgba(0, 0, 0, 0.12);
    border-bottom: 1px solid rgba(0, 0, 0, 0.12);
  }
}

</style>
