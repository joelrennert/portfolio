<script setup>
// import HeroCard from '../components/HeroCard.vue'
import IntroContent from '@/components/IntroContent.vue'
import CreativeProjects from '@/components/CreativeProjects.vue'
import WebFlowProjects from '@/components/WebFlowProjects.vue'
import WebProjects from '@/components/WebProjects.vue'
import ContactMe from '@/components/ContactMe.vue'
import DividerCardFooter from '@/components/DividerCardFooter.vue'
import ResumeSection from '@/components/ResumeSection.vue'
import IntroContentPart2 from '@/components/IntroContentPart2.vue'
import AboutSkills from '@/components/AboutSkills.vue'
import TheHeader from '@/components/TheHeader.vue'
</script>

<template>
  <div class="main-container">
    <div class="heroContainer">
      <TheHeader/>
    </div>
    <div class="introContainer">
      <IntroContent />
      <IntroContentPart2 />
    </div>
    <div class="projectsContainer">
      <div class="projects">
        <WebProjects />
        <WebFlowProjects />
        <CreativeProjects />
        <ResumeSection />
      </div>
    </div>
    <AboutSkills />
    <ContactMe />
    <DividerCardFooter />
  </div>
</template>

<style scoped>
body,
html {
  margin: 0;
  padding: 0;
  width: 100vw;
  box-sizing: border-box;
  scroll-behavior: smooth;
}

.main-container {
  overflow: visible;
  flex-direction: column;
  display: flex;
  justify-content: center;
  background-image: url('../assets/meshbg.png');
  background-size: cover;
  background-repeat: repeat;
  width: 100vw;
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

.introContainer,
.projectsContainer,
.heroContainer {
  width: 100vw;
  margin: 0;
  padding: 0;
}

.heroContainer {
  position: sticky;
  top: 0;
  z-index: 40;
  height: 15vh;
}
@media (max-width: 1400px) {
  .main-container {
    /* padding: 15px; */
  }
}
@media (max-width: 1024px) {
  .main-container {
    width: 100vw;
    padding: 15px;
  }

  .heroContainer {
    height: 20vh;
  }
}

.heroImage {
  width: 60%;
  max-width: 200px;
  height: auto;
}

@media (max-width: 768px) {
  .main-container {
    width: 100vw;
  }
  .projectsContainer,
  .projects {
    width: 100vw;
    padding: 0;
  }

  .heroContainer {
    height: 22vh;
  }

  .projects {
    display: flex;
    flex-direction: column;
    gap: 20px;
  }
}

@media (max-width: 425px) {
  .main-container {
    width: 100vw;
  }

  .heroContainer {
    height: 25vh;
  }

  .introContainer,
  .projectsContainer {
    width: 100vw;
  }

  .projects {
    display: flex;
    flex-direction: column;
    /* gap: 15px; */
  }

  h2,
  p {
    font-size: 1.2rem;

    letter-spacing: normal;
  }

  .heroImage {
    width: 80%;
    max-width: 250px;
    height: auto;
  }
}

@media (max-width: 375px) {
  .main-container {
    /* padding: 5px; */
    width: 100vw;
  }

  .heroContainer {
    height: 28vh;
  }

  h2,
  p {
    font-size: 1rem;
  }

  .heroImage {
    width: 90%;
    /* max-width: 200px; */
    height: auto;
  }
}
</style>
