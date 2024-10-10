<template>
  <div class="hero">
    <div class="heroTitle">
      <div class="h2Text">
        <h2>rEsumE / cV</h2>
      </div>
    </div>
    <div class="introContentContainer">
      <nav class="tabs">
        <button
          :class="{ active: currentSection === 'sectionFullText' }"
          @click="showSectionFullText"
        >
          Full Text
        </button>
        <button
          :class="{ active: currentSection === 'sectionSummary' }"
          @click="showSectionSummary"
        >
          Summary
        </button>
        <button :class="{ active: currentSection === 'sectionOne' }" @click="showSectionOne">
          Technical Skills
        </button>
        <button :class="{ active: currentSection === 'sectionTwo' }" @click="showSectionTwo">
          Technical Experience
        </button>
        <button :class="{ active: currentSection === 'sectionThree' }" @click="showSectionThree">
          Professional Experience
        </button>
        <button :class="{ active: currentSection === 'sectionFour' }" @click="showSectionFour">
          Education
        </button>
        <button :class="{ active: currentSection === 'sectionImage' }" @click="showSectionImage">
          <img src="../assets/image.png" height="22px" />
        </button>
      </nav>
      <div class="introContent">
        <div v-if="currentSection === 'sectionFullText'">
          <SectionFullText />
        </div>
        <div v-if="currentSection === 'sectionSummary'">
          <SectionSummary />
        </div>
        <div v-if="currentSection === 'sectionOne'">
          <SectionOne />
        </div>
        <div v-if="currentSection === 'sectionTwo'">
          <SectionTwo />
        </div>
        <div v-if="currentSection === 'sectionThree'">
          <SectionThree />
        </div>
        <div v-if="currentSection === 'sectionFour'">
          <SectionFour />
        </div>
        <div v-if="currentSection === 'sectionImage'">
          <SectionImage />
        </div>
      </div>
    </div>
  </div>
</template>
<script setup>
import { ref, onMounted } from 'vue'
import SectionFullText from './SectionFullText.vue'
import SectionSummary from './SectionSummary.vue'
import SectionOne from './SectionOne.vue'
import SectionTwo from './SectionTwo.vue'
import SectionThree from './SectionThree.vue'
import SectionFour from './SectionFour.vue'
import SectionImage from './SectionImage.vue'

const currentSection = ref('sectionFullText')

function showSectionFullText() {
  currentSection.value = 'sectionFullText'
}

function showSectionSummary() {
  currentSection.value = 'sectionSummary'
}

function showSectionOne() {
  currentSection.value = 'sectionOne'
}

function showSectionTwo() {
  currentSection.value = 'sectionTwo'
}

function showSectionThree() {
  currentSection.value = 'sectionThree'
}

function showSectionFour() {
  currentSection.value = 'sectionFour'
}

function showSectionImage() {
  currentSection.value = 'sectionImage'
}

onMounted(() => {
  currentSection.value = 'sectionSummary'
})
</script>
<style scoped>
.tabs {
  display: flex;
  justify-content: flex-start;
  padding: 0;
  gap: 1px;
  background-color: #fbf3e6;
  position: sticky;
  top: 0;
  z-index: 1;
  border-bottom: 1px solid #dddddd00;
}

button {
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 10px 20px;
  border-radius: 10px 10px 0 0;
  border: 1px solid #8d8b8b2a;
  border-bottom: none;
  cursor: pointer;
  background-color: rgb(212, 212, 211);
  font-size: 1rem;
  flex-grow: 1;
  transition:
    background-color 0.3s ease,
    color 0.3s ease;
}

button:hover {
  background-color: #bbb9b9;
}

button.active {
  background-color: rgb(210, 210, 209);
  color: rgb(0, 0, 0);
  cursor: default;
  background-color: #a5a5a5c4;
}

.introContentContainer {
  flex-grow: 1;
  width: 100%;
  height: 100%;
  overflow-y: auto;
  background-color: #76716a;
  border-radius: 20px;
  display: flex;
  flex-direction: column;
}

.introContent {
  padding: 20px;
  flex-grow: 1;
  overflow-y: auto;
  border-radius: 20px;
}

.h2Text {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  font-size: 2.2rem;
  font-family: 'Ga Maamli';
  color: #ff6641;
  padding-bottom: 20px;
}

.hero {
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  align-items: center;
  width: 80vw;
  height: 90vh;
  padding: 20px;
  /* background-color: #fbf3e6; */
  background-color: #76716a;

  border-radius: 20px;
  margin-top: 20px;
  transition: box-shadow 0.9s ease;
}

.hero:hover {
  box-shadow:
    0px 6px 6px -3px rgba(0, 0, 0, 0.2),
    0px 10px 14px 1px rgba(0, 0, 0, 0.14),
    0px 4px 18px 3px rgba(0, 0, 0, 0.12);
  transition: box-shadow 0.3s ease;
}

.hero {
  transition: box-shadow 0.9s ease;
}
</style>
