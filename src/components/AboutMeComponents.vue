<script setup>
import { ref } from 'vue'
import AboutMeTitleCard from './AboutMeTitleCard.vue'
import AboutMeAsCard from './AboutMeAsCard.vue'

const projectsVisible = ref(true)

const toggleProjects = () => {
  projectsVisible.value = !projectsVisible.value
}
</script>

<template>
  <div class="aboutMeContainer">
    <AboutMeTitleCard @click="toggleProjects" />
    <transition name="rows">
      <div v-if="projectsVisible" class="rows">
        <div>
          <transition name="fade" mode="out-in" appear>
            <AboutMeAsCard />
          </transition>
        </div>
      </div>
    </transition>
  </div>
</template>

<style scoped>
.aboutMeContainer {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  width: 45vw;
  height: 100%;
  margin-bottom: 100px;
}

.rows {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: auto;
  gap: 20px;
  background-color: #76716adc;
  padding: 10px;
  padding-bottom: 20px;
  border-bottom-left-radius: 20px;
  border-bottom-right-radius: 20px;
  border: none;
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

.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.2s ease;
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
  .aboutMeContainer {
    width: 90vw; /* Adjusted for medium screens */
  }

  .rows {
    width: 100%; /* Fill the container width */
  }
}

@media (max-width: 768px) {
  .aboutMeContainer {
    width: 70vw; /* Adjusted for smaller screens */
  }

  .rows {
    width: 100%; /* Fill the container width */
  }
}

@media (max-width: 480px) {
  .aboutMeContainer {
    width: 90vw; /* Max width for mobile screens */
  }

  .rows {
    width: 100%; /* Fill the container width */
    padding: 10px; /* Reduced padding for mobile */
  }
}
</style>
