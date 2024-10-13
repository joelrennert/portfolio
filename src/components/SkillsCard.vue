<template>
  <div class="container">
    <div class="hero border" :class="{ 'hero-shadow': hasShadow }">
      <div class="side1">
        <div :class="['h2Text', { 'new-background': backgroundChanged }]">
          <!-- <h2>technical</h2> -->
          <h2>know how</h2>

          <div class="sideTextContainer">
            <p class="side1Text">Full Stack Web Development</p>
          </div>
        </div>
      </div>
      <div ref="side2Ref" class="side2">
        <div class="heroText">
          <div class="heroSubtitle">Tools and Technologies</div>
        </div>
        <div class="heroSkills">
          <p>Java, Spring Boot, PostgreSQL</p>
          <p>HTML, CSS, JavaScript, Vue.js</p>
          <p>Responsive Design, Git, E/R Diagrams</p>
          <p>Unit Testing, Integration Testing</p>
          <p>IntelliJ, VSCode, PgAdmin, Postman</p>
          <div class="otherSkills">
            <p>Soft Skills</p>
            <p>◍</p>
            <p>Creative Thinking</p>
            <p>◍</p>
            <p>Mechanical Ability</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue'

const hasShadow = ref(false)
const backgroundChanged = ref(false)
let timeoutId = null

const handleScroll = () => {
  const scrollY = window.scrollY
  clearTimeout(timeoutId)

  if (scrollY > 0) {
    timeoutId = setTimeout(() => {
      hasShadow.value = true
    }, 800) // Adjust delay time (200ms in this example)
  } else {
    hasShadow.value = false
  }
}

const side2Ref = ref(null)

onMounted(() => {
  window.addEventListener('scroll', handleScroll)

  const options = {
    threshold: 0.5 // Trigger when 50% of the element is visible
  }

  const observer = new IntersectionObserver((entries) => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        entry.target.classList.add('fade-in')
        observer.unobserve(entry.target)
        setTimeout(() => {
          backgroundChanged.value = true
        }, 1000) // Change the background after 1 second
      }
    })
  }, options)

  if (side2Ref.value) observer.observe(side2Ref.value)
})

onUnmounted(() => {
  window.removeEventListener('scroll', handleScroll)
})
</script>

<style scoped>
/* .container {
  background-color: #549dbfdc;
  background-color: #544b41dc;

} */

p {
  font-size: 1.2rem;
  padding: 7px;
  color: #f3e0c1;
  letter-spacing: 0px;
}

.sideTextContainer {
  display: flex;
  justify-content: flex-start;
  align-items: center;
  width: 100%;
}
.otherSkills {
  display: flex;
  padding: 10px;
  gap: 10px;
  font-style: italic;
}
.side1Text {
  font-size: 1.2rem;
  font-style: italic;
}

.side1 {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  width: 80%;
  /* padding: 20px; */
}

.side2 {
  display: flex;
  flex-direction: column;
  justify-content: space-around;
  align-items: center;
  text-align: center;
  width: 100%;
  height: 100%;
  gap: 20px;
  padding: 20px;
  max-width: 800px;
  /* background-color: #373532dc; */

  border-radius: 20px;
  opacity: 0;
  transform: translateY(20px);
  transition:
    opacity 0.5s ease,
    transform 0.5s ease;
}

.fade-in {
  opacity: 1;
  transform: translateY(0);
}

.heroSubtitle {
  font-family: 'IBM Plex Mono';
  font-family: 'Poppins';
  font-size: 1.4rem;
  margin-bottom: 10px;
}

.h2Text {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  font-size: 4rem;
  font-family: 'Baumans';
  font-family: 'Poppins';

  color: #ff6641;
  flex-grow: 1;
  transition:
    padding 0.6s ease,
    text-shadow 0.6s ease,
    background 2s ease;
  letter-spacing: -7px;
  color: #f3e0c1;
  /* background: linear-gradient(302deg, rgb(251, 221, 109) 0%, rgb(249, 113, 78) 100%);
  -webkit-background-clip: text;
  background-clip: text;
  -webkit-text-fill-color: transparent; */
  padding-left: 5px;
  padding-right: 5px;
}

.heroText {
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 80%;
  text-align: center;
  font-size: 1.1rem;
  overflow-y: auto;
  gap: 20px;
  font-style: italic;
}

.hero {
  display: flex;
  justify-content: flex-start;
  align-items: center;
  width: 100vw;
  height: 100%;
  padding: 40px;
  background-color: rgba(0, 0, 0, 0);
  
  margin-top: 1px;
  cursor: default;
  border-bottom: 1px solid rgba(255, 255, 255, 0.184);
  border-bottom-left-radius: 40px;
  border-bottom-right-radius: 40px;
  /* background-color: #373532dc; */
  /* background-color: #968874; */
  /* background-color: #58b068; */

  
}
</style>
