<template>
  <div
    ref="hero"
    class="hero"
    @click="toggleRotation"
    :class="{ clicked: isClicked, visible: isVisible }"
  >
    <div class="projectImage" :class="{ rotate: rotated }">
      <img src="../assets/4cubes.png" class="heroImage" />
    </div>

    <div class="rightSide">
      <div class="h2Text">
        <h2 class="wideh2">know how</h2>
      </div>
      <div class="heroText">
        <!-- <p>Technical skills</p> -->
      </div>
      <div class="toggleArrow" :class="{ collapsed: !isClicked, expanded: isClicked }">
        <span v-if="!isClicked"><img src="../assets/expand.png" width="20px" /></span>
        <span v-if="isClicked"><img src="../assets/collapse.png" width="20px" /></span>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue'

const rotated = ref(true)
const isClicked = ref(true)
const isVisible = ref(false)
const hero = ref(null)

const toggleRotation = () => {
  rotated.value = !rotated.value
  isClicked.value = !isClicked.value
}

// Create an IntersectionObserver to detect when the component is visible
const observer = new IntersectionObserver(
  (entries) => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        isVisible.value = true
      }
    })
  },
  { threshold: 0.8 } // Adjust the threshold value as needed
)

onMounted(() => {
  if (hero.value) {
    observer.observe(hero.value)
  }
})

onUnmounted(() => {
  if (hero.value) {
    observer.unobserve(hero.value)
  }
})
</script>

<style scoped>
.hero {
  display: flex;
  justify-content: flex-start;
  align-items: center;
  flex-wrap: wrap;
  width: 45vw; /* Default width for larger screens */
  height: auto; /* Adjusted to fit content */
  padding: 10px; /* Increased padding for better layout */
  margin-top: 1px;
  cursor: pointer;
  transition: background 0.5s ease-in-out, border-radius 0.3s ease-in-out, opacity 0.6s ease-in-out;
  background-color: #4f4c47dc;
  border-radius: 20px;
  opacity: 1; /* Initially visible */
}

.hero.visible {
  opacity: 1; /* Fade in when visible */
}

.hero.clicked {
  background-color: #393733dc;
  border-bottom-left-radius: 0px;
  border-bottom-right-radius: 0px;
  transition: border-radius 0.3s ease-in-out;
}

.hero.clicked .h2Text h2,
.hero.clicked .wideh2,
.hero.clicked .heroText p,
.hero.clicked .toggleArrow {
  background-size: 200% 200%;
  transition: background 0.9s ease-in-out;
}

.hero:hover {
  background-color: #373532dc;
  transition: background 0.2s ease-in-out, border-radius 0.3s ease-in-out;
}

.rotate img {
  transform: rotateZ(-8deg);
  transition: transform 0.2s ease-out;
}

.rightSide {
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  align-items: flex-start;
  width: 100%; /* Full width for right side */
  height: 100%;
  flex-grow: 20;
}

.wideh2 {
  display: inline-block;
  font-family: 'Poppins';
  color: #f3e0c1;
  margin-top: -20px;
  flex-grow: 1;
  letter-spacing: -8px;
  transition: color 0.9s ease;
  padding-left: 15px;
  padding-right: 5px;
}

.projectImage {
  display: flex;
  justify-content: flex-start;
  align-items: center;
  height: 100%;
  transition: box-shadow 0.6s ease;
  padding: 20px;
}

.h2Text {
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  align-items: flex-start;
  font-size: 3rem;
  font-family: 'Poppins';
  color: #f3e0c1;
  flex-grow: 1;
  letter-spacing: -8px;
  padding-left: 5px;
  padding-right: 5px;
  transition: background 0.9s ease-in-out;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);

}

.heroText {
  display: flex;
  justify-content: flex-start;
  align-items: flex-start;
  margin-left: 15px;
  width: 100%;
  gap: 12px;
  font-size: 1.3rem;
  font-style: italic;
  color: #f3e0c1;
  padding-left: 15px;
  padding-right: 5px;
  transition: background 0.9s ease-in-out;
}

.heroImage {
  width: 15%;
  border-radius: 10px;
  transition: box-shadow 0.6s ease, transform 0.6s ease;
}

/* Arrow styles */
.toggleArrow {
  display: flex;
  justify-content: flex-end;
  width: 98%;
  right: 20px;
  bottom: 20px;
  font-size: 0.8rem;
  cursor: pointer;
  transition: opacity 0.3s ease;
  color: #f3e0c1;
  font-style: italic;
}

.toggleArrow.collapsed {
  opacity: 1;
}

.toggleArrow.expanded {
  opacity: 1;
}

/* Media queries for responsiveness */
@media (max-width: 1200px) {
  .hero {
    width: 100%; /* Adjusted for medium screens */
  }


}

@media (max-width: 768px) {
  .hero {
    width: 100%; /* Adjusted for smaller screens */
  }


}

@media (max-width: 480px) {
  .hero {
    width: 100%; /* Max width for mobile screens */
    
  }
  .wideh2 {
    font-size: 4rem;
  }

  
}
</style>
