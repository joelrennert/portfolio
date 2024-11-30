<template>
  <div class="contentContainer" id="creative">
    <CreativeProjectsTitleCard @click="toggleProjects" />

    <transition name="fade">
      <div v-if="projectsVisible" class="grid">
        <div
          v-for="(project, index) in projects"
          :key="index"
          class="gridItem"
          @click="openModal($event.currentTarget, index)"
        >
          <transition name="fade" mode="out-in" appear>
            <component :is="getComponentForIndex(index)" />
          </transition>
        </div>
      </div>
    </transition>

    <ProjectModal
      :visible="modalVisible"
      :imageSrc="modalImageSrc"
      :content="modalContent"
      @close="closeModal"
    />
  </div>
</template>

<script setup>
import { ref } from 'vue'
import CreativeProject1Details from './CreativeProject1Details.vue'
import CreativeProject2Details from './CreativeProject2Details.vue'
import CreativeProject3Details from './CreativeProject3Details.vue'
import CreativeProjectsTitleCard from './CreativeProjectsTitleCard.vue'
import ProjectModal from '../components/ProjectModal.vue'

const projectsVisible = ref(false)
const modalVisible = ref(false)
const modalContent = ref({})
const modalImageSrc = ref('')

const projects = ref([
  {
    title: 'unorb',
    overview: 'drone based modular synthesis',
    features: ['', '', ''],
    technologies: '',
    challenges: '',
    impact: '',
    future: ''
  },
  {
    title: 'Oil Painting',
    overview: 'Oil on canvas',
    features: ['', '', ''],
    technologies: '',
    challenges: 'Work in progress',
    impact: '',
    future: ''
  },
  {
    title: 'Collage',
    overview: 'Collage on paper',
    features: ['', '', ''],
    technologies: '',
    challenges: '',
    impact: '',
    future: ''
  }
])

const toggleProjects = () => {
  projectsVisible.value = !projectsVisible.value
}

const openModal = (element, projectIndex) => {
  const imageElement = element.querySelector('.image')
  if (imageElement) {
    const backgroundImage = window.getComputedStyle(imageElement).backgroundImage
    if (backgroundImage && backgroundImage !== 'none') {
      modalImageSrc.value = backgroundImage.slice(5, -2) // Remove 'url("' and '")'
    }
  }
  modalContent.value = projects.value[projectIndex]
  modalVisible.value = true
}

const closeModal = () => {
  modalVisible.value = false
}

const getComponentForIndex = (index) => {
  switch (index) {
    case 0:
      return CreativeProject1Details
    case 1:
      return CreativeProject2Details
    case 2:
      return CreativeProject3Details
    default:
      return null
  }
}
</script>

<style scoped>
.contentContainer {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  width: 100vw;
  height: 100%;
  margin-bottom: 100px;
  margin-top: 100px;
}

.grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
  gap: 25px;
  width: 90vw;
  padding: 25px;
  background-color: #c64f4fdc;
  border-bottom-left-radius: 20px;
  border-bottom-right-radius: 20px;
}

.gridItem {
  border-radius: 12px;
  text-align: center;
  cursor: pointer;
  transition:
    transform 0.3s ease,
    box-shadow 0.3s ease;
  min-height: 250px;
  display: flex;
  flex-direction: column;
}

.gridItem:hover {
  transform: scale(1.01);
  box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
}

.projectTitle {
  font-size: 1.2rem;
  font-weight: bold;
}

.projectOverview {
  font-size: 1rem;
  margin-top: 10px;
}

.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.5s ease;
}

.fade-enter-from,
.fade-leave-to {
  opacity: 0;
}

.fade-enter-to,
.fade-leave-from {
  opacity: 1;
}

/* Media queries for responsiveness */
@media (max-width: 1200px) {
 

 .rows {
   width: 100%; 
 }
}

@media (max-width: 768px) {


 .rows {
   width: 100%; 
 }
}

@media (max-width: 480px) {


 .rows {
   width: 100%; 
   padding: 10px; 
 }
}
</style>
