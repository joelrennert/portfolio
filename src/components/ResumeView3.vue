<template>
  <div>
    <div class="firstRow">
      <img :src="imgSrc" @click="openLightbox" />
    </div>
    <Lightbox :imageSrc="imgSrc" :visible="showLightbox" @close="closeLightbox" />
  </div>
</template>

<script setup>
import { ref } from 'vue'
import Lightbox from '../components/LightBox.vue'
import imgSrc from '../assets/resumeedited.png'

const showLightbox = ref(false)

const openLightbox = () => {
  showLightbox.value = true
}

const closeLightbox = () => {
  showLightbox.value = false
}
</script>

<style scoped>
img {
  width: 25%;
  cursor: pointer;
}
.firstRow {
  display: flex;
  justify-content: center;
  align-items: center;
  width: auto;
  height: auto;
  gap: 40px;
  padding: 25px;
  margin-bottom: 20px;
  border-radius: 20px;
}

.resumeSection {
  display: flex;
  flex-direction: column;
  flex-grow: 1;
  /* background-color: rgba(128, 128, 128, 0.401); */
  border-radius: 16px;
  padding: 15px;
  gap: 15px;
}

.sectionTitle {
  font-size: 1.3rem;
  font-style: italic;
  font-weight: 500;
}

.sectionSubtitle {
  font-size: 1rem;
  font-weight: 600;
  padding-left: 10px;
}
</style>
