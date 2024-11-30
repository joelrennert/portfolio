<script setup>
import AboutMeComponents from './AboutMeComponents.vue'
import SkillsComponents from './SkillsComponents.vue'
</script>

<template>
  <div class="mainContainer" id="info">
    <div class="contentContainer">
      <div class="aboutContainer">
        <AboutMeComponents />
      </div>
      <div class="skillsContainer">
        <SkillsComponents />
      </div>
    </div>
  </div>
</template>

<script>
export default {}
</script>

<style scoped>
.containerContainer {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
}
/* .mainContainer {
  background-color: #373532dc;
} */
.contentContainer {
  display: flex;
  justify-content: space-evenly;
  align-items: flex-start;
  /* width: 98vw; */
  /* padding: 40px; */
  padding-top: 80px;
  border-bottom: 1px solid rgba(255, 255, 255, 0.184);
  border-bottom-left-radius: 40px;
  border-bottom-right-radius: 40px;
  gap: 40px;
  /* margin-top: 40px; */

  /* background-color: #373532dc; */
}

.aboutContainer,
.skillsContainer {
  display: flex;
  /* flex-direction: column; */
  /* width: 45vw; */
  justify-content: center;
  align-items: center;
  border: none;
}

@media (max-width: 1200px) {
  .contentContainer {
    flex-direction: column;
    align-items: center;
  }

  .aboutContainer,
  .skillsContainer {
    width: 90vw;
  }
}

@media (max-width: 768px) {
  .contentContainer {
    flex-direction: column;
    align-items: center;
  }

  .aboutContainer,
  .skillsContainer {
    width: 95vw;
  }
}

@media (max-width: 480px) {
  .contentContainer {
    flex-direction: column;
    align-items: center;
  }

  .aboutContainer,
  .skillsContainer {
    width: 100vw;
  }
}
</style>
