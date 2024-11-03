<template>
  <div class="contentContainer">
    <WebFlowProjectsTitleCard @click="toggleProjects" />

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
import ProjectModal from '../components/ProjectModal.vue'
import WebFlowProjectsTitleCard from './WebFlowProjectsTitleCard.vue'
import WebFlowProject2Details from './WebFlowProject2Details.vue'
import WebFlowProject3Details from './WebFlowProject3Details.vue'

// Add more imports for additional project details components as needed

const projectsVisible = ref(false)
const modalVisible = ref(false)
const modalContent = ref({})
const modalImageSrc = ref('')

const projects = ref([
  {
    title: 'mywebsitejoel',
    overview: 'simple landing page with animated background',

    features: ['', '', ''],
    technologies: 'Vue.js HTML CSS',
    challenges: '',
    impact: '',
    future: ''
  },

  {
    title: 'Portfolio',
    overview: 'Personal portfolio prototype',
    features: ['', '', ''],
    technologies: 'Webflow HTML CSS',
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
      return WebFlowProject3Details
    case 1:
      return WebFlowProject2Details
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
  background-color: #659e70dc;
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
  justify-content: center;
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
    width: 100%; /* Fill the container width */
  }
}

@media (max-width: 768px) {
  .rows {
    width: 100%; /* Fill the container width */
  }
}

@media (max-width: 480px) {
  .rows {
    width: 100%; /* Fill the container width */
    padding: 10px; /* Reduced padding for mobile */
  }
}
</style>
