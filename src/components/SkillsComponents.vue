<script setup>
import { ref } from 'vue'

import SkillsTitleCard from './SkillsTitleCard.vue'
import SkillsAsCard from './SkillsAsCard.vue'

const projectsVisible = ref(true)

const toggleProjects = () => {
  projectsVisible.value = !projectsVisible.value
}
</script>

<template>
  <div class="skillsContainer">
    <SkillsTitleCard @click="toggleProjects" />
    <transition name="rows">
      <div v-if="projectsVisible" class="rows">
        <transition name="fade" mode="out-in" appear>
          <SkillsAsCard />
        </transition>
      </div>
    </transition>
  </div>
</template>

<style scoped>
.skillsContainer {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  width: 45vw; 
}

.rows {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: flex-start;
  width: 100%;
  height: 100%;
  background-color: #393733dc; 
  padding: 20px; 
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
  .skillsContainer {
    width: 50vw; /* Adjusted for medium screens */
  }

  .rows {
    width: 100%; /* Fill the container width */
  }
}

@media (max-width: 768px) {
  .skillsContainer {
    width: 70vw; /* Adjusted for smaller screens */
  }

  .rows {
    width: 100%; /* Fill the container width */
  }
}

@media (max-width: 480px) {
  .skillsContainer {
    width: 90vw; /* Max width for mobile screens */
  }

  .rows {
    width: 100%; /* Fill the container width */
    padding: 10px; /* Reduced padding for mobile */
  }
}
</style>
