<template>
  <div
    ref="hero"
    class="hero"
    @click="toggleRotation"
    :class="{ clicked: isClicked }"
  >
    <div class="projectImage" :class="{ rotate: rotated }">
      <img src="../assets/colors.webp" class="heroImage" />
    </div>

    <div class="rightSide">
      <div class="h2Text">
        <h2 class="wideh2">quick info</h2>
      </div>
      <div class="heroText">
        <p>more about me</p>
      </div>
      <div class="toggleArrow" :class="{ collapsed: !isClicked, expanded: isClicked }">
        <span v-if="!isClicked">open &#9660;</span>
        <span v-if="isClicked">close &#9650;</span>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue'

const rotated = ref(true)
const isClicked = ref(true)
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
        // No need to set isVisible to true anymore
      }
    })
  },
  { threshold: 0.8 }
) // Adjust the threshold value as needed

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
  width: 45vw;
  height: 100%;
  padding: 5px;
  margin-top: 1px;
  cursor: pointer;
  transition:
    background 0.5s ease-in-out,
    border-radius 0.3s ease-in-out;
  background-color: #4f4c4783;
  border-radius: 20px;
  padding: 10px;
  opacity: 1; /* Set to visible immediately */
}

.hero.clicked {
  background-color: #76716adc;
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
  background-color: #76716adc;
  transition:
    background 0.2s ease-in-out,
    border-radius 0.3s ease-in-out;
}

.hero:hover .h2Text h2,
.hero:hover .heroText p,
.hero.clicked .toggleArrow {
  background-size: 200% 100%;
  transition: background 0.9s ease-in-out;
}

.rotate img {
  transform: rotateZ(-5deg);
  transition: transform 0.5s ease-out;
  background: linear-gradient(
    302deg,
    rgba(255, 102, 65, 1) 0%,
    rgba(254, 209, 50, 1) 49%,
    rgba(35, 109, 246, 1) 100%
  );
}

.rightSide {
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  align-items: flex-start;
  width: 100%;
  height: 100%;
  flex-grow: 20;
  background-color: rgba(255, 255, 255, 0);
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
  font-size: 4rem;
  font-family: 'Poppins';
  color: #f3e0c1;
  flex-grow: 1;
  letter-spacing: -8px;
  background-size: 200% 100%;
  padding-left: 5px;
  padding-right: 5px;
  transition: background 0.9s ease-in-out;
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
  width: 10%;
  border-radius: 10px;
  transition:
    box-shadow 0.6s ease,
    transform 0.6s ease;
  background-color: rgba(255, 255, 255, 0.083);
  box-shadow:
    0px 6px 6px -3px rgba(0, 0, 0, 0.2),
    0px 10px 14px 1px rgba(0, 0, 0, 0.14),
    0px 4px 18px 3px rgba(0, 0, 0, 0.12);
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
</style>