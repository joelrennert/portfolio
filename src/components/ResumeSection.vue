<template>
  <div :class="['contentContainer', { 'no-margin': !projectsVisible }]">
    <ResumeTitleCard @click="toggleProjects" />

    <transition name="rows">
      <div v-if="projectsVisible" class="rows">
        <transition name="fade" mode="out-in" appear>
          <ResumeCardNew :project="project" />
        </transition>
      </div>
    </transition>
  </div>
</template>

<script setup>
import { ref } from 'vue'
import ResumeTitleCard from './ResumeTitleCard.vue'
import ResumeCardNew from './ResumeCardNew.vue'

const projectsVisible = ref(false)

const toggleProjects = () => {
  projectsVisible.value = !projectsVisible.value
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
  padding-bottom: 50px;
  border-bottom: 1px solid rgba(255, 255, 255, 0.184);
  border-bottom-left-radius: 40px;
  border-bottom-right-radius: 40px;
}

.rows {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
  width: 90vw;
  gap: 20px;
  background-color: #01836b;
  /* background-color: #f09342; */
  /* background-color: #bc763c; */

  
  padding: 10px;
  padding-bottom: 20px;
  border-bottom-left-radius: 20px;
  border-bottom-right-radius: 20px;
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

@media (max-width: 1200px) {
  .rows {
    flex-direction: column;
  }
}

@media (max-width: 768px) {
  .contentContainer {
    width: 90vw;
  }
}

@media (max-width: 480px) {
  .contentContainer {
    width: 95vw;
  }
}
</style>
