<template>
  <div class="hero">
    <div class="heroTitle">
    </div>
    <!-- <div class="nameText">
      <p>Joel Rennert</p>
      <p>Columbus, OH</p>
    </div> -->
    <div ref="summaryRef" class="summary">
      <p>
        Creative and intuitive problem solver with a background in fabrication, pursuing a Junior
        Developer role in order to improve processes and heighten positive user experiences while
        constantly improving my skillset
      </p>
    </div>
    <div class="resumeContent">
      <ResumeView1 v-if="activeView === 1" />
      <ResumeView2 v-else-if="activeView === 2" />
      <ResumeView3 v-else-if="activeView === 3" />
    </div>
    <div class="buttonContainer">
      <button
        @click="toggleView(1)"
        :class="{ active: activeView === 1 }"
        class="toggleButton"
      ></button>
      <button
        @click="toggleView(2)"
        :class="{ active: activeView === 2 }"
        class="toggleButton"
      ></button>
      <button
        @click="toggleView(3)"
        :class="{ active: activeView === 3 }"
        class="toggleButton"
      ></button>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue'
import ResumeView1 from './ResumeView1.vue'
import ResumeView2 from './ResumeView2.vue'
import ResumeView3 from './ResumeView3.vue'

const activeView = ref(1)
const summaryRef = ref(null)

function toggleView(viewNumber) {
  activeView.value = viewNumber
}

onMounted(() => {
  const options = {
    threshold: 0.5 // Trigger when 50% of the summary is visible
  }

  const observer = new IntersectionObserver((entries) => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        setTimeout(() => {
          summaryRef.value.classList.add('animate-summary')
        }, 400)
        observer.unobserve(entry.target)
      }
    })
  }, options)

  observer.observe(summaryRef.value)
})
</script>

<style scoped>
.hero {
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  align-items: center;
  width: 100vw;
  height: 60vh;
  color: #f3e0c1;
  background-color: #01836b;
  /* background-color: #f09342e2; */
  /* background-color: #c98247; */
  /* background-color: #bc763c; */

  cursor: default;
  transition: box-shadow 0.9s ease;
  overflow: hidden;
}

.heroTitle,
.nameText,
.summary {
  text-align: center;
}

.summary {
  display: flex;
  width: 90%;
  font-style: italic;
  font-size: 1rem;
  padding: 10px;
  opacity: 0;
  transform: translateY(20px);
  transition:
    opacity 0.5s ease,
    transform 0.5s ease;
    background-color: #028b72;
    /* background-color: #ff7700d2; */
    /* background-color: #e29454; */
    color: #ffffff;

    border-radius: 10px;
  /* margin-top:20px; */
 
}

.animate-summary {
  opacity: 1;
  transform: translateY(0);
}

.nameText {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: flex-start;
  width: 100%;
  /* padding: 20px; */
  padding-left:10%;
}

p {
  line-height: 1.5;
  padding-left: 10px;
}

.h2Text {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  font-size: 3.5rem;
  font-family: 'Poppins';
  color: #ff6641;
  margin-top: -20px;
  flex-grow: 1;
  transition:
    padding 0.6s ease,
    text-shadow 0.6s ease;
  /* padding: 20px; */
  letter-spacing: -7px;
}

.resumeContent {
  flex-grow: 1;
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  align-items: center;
  width: 100%;
  height: 100%;
  
  overflow-y: auto;
}

.buttonContainer {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
  /* padding: 0px; */
  margin-top: 10px;
  padding: 10px;
}

.toggleButton {
  width: 20px;
  height: 20px;
  margin-left: 10px;
  border: none;
  background-color: transparent;
  color: #ff6641;
  background-color: #959190;
  font-size: 1.5rem;
  border-radius: 50%;
  cursor: pointer;
  transition:
    background-color 0.3s ease,
    color 0.3s ease;
}

.toggleButton.active {
  background-color: #f3e0c1;
  color: #ff67417f;
}

.toggleButton:hover {
  background-color: #f3e0c1d1;
}


/* .toggleButton {
  width: 20px;
  height: 20px;
  margin-left: 10px;
  border: none;
  background-color: transparent;
  color: #ff6641;
  background-color: #959190;
  font-size: 1.5rem;
  border-radius: 50%;
  cursor: pointer;
  transition:
    background-color 0.3s ease,
    color 0.3s ease;
}

.toggleButton.active {
  background-color: #ff6741de;
  color: #ff67417f;
}

.toggleButton:hover {
  background-color: #ff4400d6;
} */
</style>