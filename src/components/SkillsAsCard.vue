<template>
  <div class="skillsContainer">
    <div ref="side2Ref" class="side2">
      <div class="otherSkills">
        <p>Creative Thinking</p>

        <p>◍</p>
        <p>Soft Skills</p>
        <p>◍</p>
        <p>Mechanical Ability</p>
      </div>
      <div class="skillsImageContainer">
        <img src="../assets/3dhash.png" class="skillsImage" />
      </div>
      <div class="heroText">
        <div class="heroSubtitle">Tools and Technologies:</div>

        <div class="heroSkills">
          <p>Java, Spring Boot, PostgreSQL</p>
          <p>HTML, CSS, JavaScript, Vue.js</p>
          <p>Responsive Design, Git, E/R Diagrams</p>
          <p>Unit Testing, Integration Testing</p>
          <p>IntelliJ, VSCode, PgAdmin, Postman</p>
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
    threshold: 0.5
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
.skillsContainer {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 45vw; /* Default width for larger screens */
  margin: auto; /* Center the container */
  flex-grow: 1;
  height: 72vh;
}

.skillsImageContainer {
  display: flex;
  justify-content: center;
}

.skillsImage {
  width: 30%;
}

p {
  font-size: 1.2rem;
  padding: 7px;
  color: #f3e0c1;
  letter-spacing: 0px;
}

.otherSkills {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
  font-style: italic;
}

.side2 {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  align-items: stretch;
  text-align: center;
  width: 100%;
  height: auto; /* Adjusted for content height */
  border-radius: 20px;
  opacity: 0;
  transform: translateY(20px);
  transition:
    opacity 0.9s ease,
    transform 0.9s ease;
  padding: 20px;
  gap: 40px;
}

.fade-in {
  opacity: 1;
  transform: translateY(0);
}

.heroSubtitle {
  font-family: 'Poppins';
  font-size: 1.4rem;
  margin-bottom: 10px;
}

/* Responsive styles */
@media (max-width: 768px) {
  /* Adjust the breakpoint as needed */
  .skillsContainer {
    width: 90vw; /* Width for smallesr screens */
  }

  .skillsImage {
    width: 50%; /* Adjust image size on smaller screens if needed */
  }
}
</style>
