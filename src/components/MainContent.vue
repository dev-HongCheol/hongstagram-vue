<template>
  <div class="relative-position conent-wrap">
    <q-tabs
      v-model="tab"
      inline-label
      switch-indicator
      indicator-color="dark"
      class="content-tab"
    >
      <q-tab
        name="board"
        icon="grid_on"
        label="게시물"
      />
      <q-tab
        name="reels"
        icon="subscriptions"
        label="릴스"
      />
      <q-tab
        name="video"
        icon="play_circle_outline"
        label="동영상"
      />
      <q-tab
        name="taged"
        icon="person"
        label="태그됨"
      />
    </q-tabs>
  </div>
  <div>
    <div class="row">
      <div
        v-for="(board) in boards"
        :key="board.id"
        class="col-4 content-item"
      >
        <div class="q-ma-md relative-position">
          <div class="content-item-overlay row text-white justify-center items-center">
            <div class="col-12 col-sm-6 text-center">
              <q-icon
                name="favorite"
                class="q-mr-sm"
              />{{ intToString(board.favoriteCnt) }}
            </div>
            <div class="col-12 col-sm-6  text-center">
              <q-icon
                name="chat_bubble"
                class="q-mr-sm"
              />{{ intToString(board.replyCnt) }}
            </div>
          </div>
          <q-img
            :src="board.imgUrl"
            height="25vw"
          />
        </div>
      </div>

      <div
        class="col-4 content-item"
        @click="isShowModal=true"
      >
        <div class="q-ma-md relative-position full-height">
          <div class="new-content-item row justify-center items-center">
            <q-icon
              name="add_circle_outline"
              size="1.5rem"
            />
          </div>
        </div>
      </div>
    </div>

    <q-dialog v-model="isShowModal">
      <q-card style="min-width: 350px">
        <q-card-section>
          <div class="text-h6">
            게시물 등록
          </div>
        </q-card-section>

        <q-card-section class="q-pt-none">
          <q-input
            v-model="imgUrl"
            color="grey-3"
            outlined
            label="이미지 URL"
          >
            <template #append>
              <q-icon
                name="photo_camera"
              />
            </template>
          </q-input>

          <q-img
            v-show="imgUrl.length !== 0"
            :src="imgUrl"
            width="350px"
          />
        </q-card-section>

        <q-card-actions
          align="right"
          class="text-primary"
        >
          <q-btn
            v-close-popup
            flat
            label="취소"
          />
          <q-btn
            flat
            label="등록"
            @click="addBoard"
          />
        </q-card-actions>
      </q-card>
    </q-dialog>
  </div>
</template>
<script setup>
import { rest } from 'src/boot/axios'
import { ref, onMounted } from 'vue'
import { intToString } from '../boot/util'
import { useQuasar } from 'quasar'

const $q = useQuasar()

const isShowModal = ref(false)
const imgUrl = ref('')
const tab = ref('board')
const boards = ref([])

const addBoard = () => {
  const newBoard = {
    favoriteCnt: 0,
    replyCnt: 0,
    imgUrl: imgUrl.value
  }
  rest.addBoard(newBoard)
    .then(res => {
      if (res.data) {
        isShowModal.value = false
        $q.notify('게시물이 등록 되었습니다.')
        imgUrl.value = ''

        boards.value.push(newBoard)
      }
    })
}

onMounted(() => {
  rest.getBoardList()
    .then(res => {
      if (res.data) { boards.value = res.data }
    })
})

</script>
<style lang="scss" scoped>
.conent-wrap{
   border-top: 1px solid rgba(0, 0, 0, 0.12);
   .content-tab{
      top: -1px;
      font-size: 0.9rem;
   }
}

.content-item{
  .content-item-overlay{
    position: absolute;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.32);
    z-index: 1;
    opacity: 0;
    font-size: 1.05rem;

    &:hover{
      opacity: 1;
    }
  }
  .q-img{
    max-height: 300px;
  }

  .new-content-item{
    border: dashed 2px #e0e0e0;
    color: #e0e0e0;
    width: 100%;
    height: 25vw;
    max-height: 300px;
    cursor: pointer;

    &:hover{
      border: dashed 2px #c0c0c0;
      color: #c0c0c0;
    }
  }
}

</style>
<style>
.content-tab .q-tab__indicator{
   height: 1px;
}
.content-tab .q-tab__icon{
   font-size: 14px;
}
.content-tab .q-tab__label{
   font-size: 12px;
}
</style>
