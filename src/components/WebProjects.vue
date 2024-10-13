<script setup>
import { ref, onMounted, onBeforeUnmount } from 'vue'

import WebProject1Details from '../components/WebProject1Details.vue'
import WebProject2Details from '../components/WebProject2Details.vue'
import WebProject3Details from '../components/WebProject3Details.vue'
import WebProject4Details from '../components/WebProject4Details.vue'
import WebProject6Details from '../components/WebProject6Details.vue'
import WebProject7Details from '../components/WebProject7Details.vue'
import WebProject8Details from '../components/WebProject8Details.vue'
import WebProject9Details from '../components/WebProject9Details.vue'
import ProjectModal from '../components/ProjectModal.vue'
import WebProjectsTitleCard from './WebProjectsTitleCard.vue'

const projectsVisible = ref(false)
const modalVisible = ref(false)
const modalContent = ref({})
const modalImageSrc = ref('')

const projects = ref([
  {
    title: 'Music Gear',
    overview: 'Personal music gear information center',
    features: ['CRUD functionality', 'Filter search', 'Sorting'],
    technologies: 'Java, Spring Boot, PostgreSQL, Vue.js',
    challenges:
      'This web app documents my personal collection of music gear with add, update, delete, sort and filter search functionality',
    liveDemoLink: '',
    githubLink: 'https://github.com/joelrennert/musicgear'
  },
  {
    title: 'Transfer Credits',
    overview: 'Transfer Credits Tracker',
    features: ['', '', ''],
    technologies: 'Java, Spring Boot, PostgreSQL, Vue.js',
    challenges: '',
    liveDemoLink: '',
    githubLink: 'https://github.com/joelrennert/SWEtransfercredits'
  },
  {
    title: 'NasaPic',
    overview: 'Nasa Astronomy image of the day viewer',
    features: ['', '', ''],
    technologies: 'Java',
    challenges: '',
    liveDemoLink: '',
    githubLink: 'https://github.com/joelrennert/hazardousasteroid'
  },
  {
    title: 'Hazardous Asteroid',
    overview: 'java emailer program nasa api',
    features: ['', '', ''],
    technologies: 'Java',
    challenges: 'Get an email when there is a potentially hazardous asteroid nearby',
    liveDemoLink: '',
    githubLink: 'https://github.com/joelrennert/hazardousasteroid'
  },
  {
    title: 'White Balls',
    overview: 'animated vue art',
    features: ['', '', ''],
    technologies: 'Vue.js HTML CSS',
    challenges: 'amorphous rotating white balls',
    liveDemoLink: 'https://joelrennert.github.io/whiteballs/',
    githubLink: 'https://github.com/joelrennert/whiteballs'
  },

  {
    title: 'Ultimate Frisbee',
    overview: 'interactive vue art',
    features: ['', '', ''],
    technologies: 'Vue.js',
    challenges: '',
    liveDemoLink: 'https://joelrennert.github.io/ultimatefrisbee/',
    githubLink: 'https://github.com/joelrennert/ultimatefrisbee'
  },
  {
    title: 'Cube Rotator',
    overview: 'interactive vue art',
    features: ['', '', ''],
    technologies: 'Vue.js',
    challenges: '2d images of 3d cubes rotating in close proximity',
    liveDemoLink: '',
    githubLink: '#'
  },
  {
    title: 'Wobbly Eyes',
    overview: 'interactive vue art',
    features: ['', '', ''],
    technologies: 'Vue.js',
    challenges: '',
    liveDemoLink: '',
    githubLink: '#'
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

const projectRefs = ref([])

const getComponentForIndex = (index) => {
  switch (index) {
    case 0:
      return WebProject1Details
    case 1:
      return WebProject2Details
    case 2:
      return WebProject4Details
    case 3:
      return WebProject3Details

    case 4:
      return WebProject9Details

    case 5:
      return WebProject6Details

    case 6:
      return WebProject8Details
    case 7:
      return WebProject7Details
    default:
      return null
  }
}

const observerCallback = (entries) => {
  entries.forEach((entry) => {
    if (entry.isIntersecting) {
      entry.target.classList.add('fade-in')
      observer.unobserve(entry.target)
    }
  })
}

let observer

onMounted(() => {
  observer = new IntersectionObserver(observerCallback, {
    threshold: 0.9
  })
  projectRefs.value.forEach((ref) => {
    if (ref) observer.observe(ref)
  })
})

onBeforeUnmount(() => {
  if (observer) {
    projectRefs.value.forEach((ref) => {
      if (ref) observer.unobserve(ref)
    })
    observer.disconnect()
  }
})
</script>

<template>
  <div class="contentContainer">
    <WebProjectsTitleCard @click="toggleProjects" />

    <transition name="fade">
      <div v-if="projectsVisible" class="grid">
        <div
          v-for="(project, index) in projects"
          :key="index"
          class="gridItem"
          @click="openModal($event.currentTarget, index)"
          ref="el => projectRefs.value[index] = el"
        >
          <component :is="getComponentForIndex(index)" />
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

<style scoped>
.contentContainer {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  width: 100vw;
  height: 100%;
  margin-bottom: 100px;
  padding-top: 100px;
}

.grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
  gap: 25px;
  width: 90vw;
  height: 100%;
  padding: 25px;
  border-bottom-left-radius: 20px;
  border-bottom-right-radius: 20px;
  background: #373532dc;
  background-color: #286c9cda;
}

.gridItem {
  background: #373532dc;
  border-radius: 12px;
  box-shadow:
    0 10px 20px rgba(0, 0, 0, 0.2),
    0 -10px 20px rgba(255, 255, 255, 0.1);
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
  box-shadow:
    0 10px 20px rgba(0, 0, 0, 0.25),
    0 -10px 20px rgba(255, 255, 255, 0.15);
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
  transition: opacity 0.3s ease-in-out;
}

.fade-enter-from,
.fade-leave-to {
  opacity: 0;
}

.fade-enter-to,
.fade-leave-from {
  opacity: 1;
}

.rows-enter-active,
.rows-leave-active {
  transition: all 0.5s ease;
}

.rows-enter-from,
.rows-leave-to {
  opacity: 0;
  transform: translateY(-20px);
}

.rows-enter-to,
.rows-leave-from {
  opacity: 1;
  transform: translateY(0);
}

@media (max-width: 1200px) {
  .skillsContainer {
    width: 50vw;
  }

  .rows {
    width: 100%;
  }
}

@media (max-width: 768px) {
  .skillsContainer {
    width: 70vw;
  }

  .rows {
    width: 100%;
  }
}

@media (max-width: 480px) {
  .skillsContainer {
    width: 90vw;
  }

  .rows {
    width: 100%;
    padding: 10px;
  }
}
</style>
