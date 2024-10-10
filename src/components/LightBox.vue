<template>
  <div class="lightbox" @click="closeLightbox" v-if="visible">
    <div class="lightbox-content" @click.stop>
      <img :src="imageSrc" alt="Project Image" @click="closeLightbox" />
    </div>
  </div>
</template>

<script setup>
// eslint-disable-next-line no-unused-vars
const props = defineProps({
  imageSrc: String,
  visible: Boolean
})

const emit = defineEmits(['close'])

const closeLightbox = () => {
  emit('close')
}
</script>

<style scoped>
.lightbox {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.8);
  display: flex;
  justify-content: center;
  align-items: center;
  z-index: 60;
}

.lightbox-content {
  position: relative;
}

img {
  max-width: 90vw;
  max-height: 90vh;
  cursor: pointer;
}
</style>
