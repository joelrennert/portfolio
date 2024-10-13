<template>
  <div class="container">
    <div class="introContent border">
      <div ref="side2Ref" class="side2">
        <div ref="imageContainerRef" class="imageContainer">
          <img src="../assets/me2.png" class="meImage" />
        </div>
        <p>
          I started pretty young with computers,<br />
          ~ripping apart~ the family 386 computer and reassembling it to see how it worked
        </p>
        <p>
          Self-learned HTML in 1995 from online tutorials using notepad.exe and went on to make
          websites for family and friends
        </p>
        <p>
          In 2023, after years working in fabrication and fine arts, I brushed up on my technical
          skills and graduated from Tech Elevator, a Full Stack Web Development bootcamp in
          Columbus, Ohio
        </p>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue'

const hasShadow = ref(false)
let timeoutId = null

const handleScroll = () => {
  const scrollY = window.scrollY
  clearTimeout(timeoutId)

  if (scrollY > 0) {
    timeoutId = setTimeout(() => {
      hasShadow.value = true
    }, 800)
  } else {
    hasShadow.value = false
  }
}

const imageContainerRef = ref(null)
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
      }
    })
  }, options)

  if (imageContainerRef.value) observer.observe(imageContainerRef.value)
  if (side2Ref.value) observer.observe(side2Ref.value)
})

onUnmounted(() => {
  window.removeEventListener('scroll', handleScroll)
})
</script>

<style scoped>
.container {
  border: none;
}
p {
  font-size: 1.2rem;
  padding: 5px;
  color: #f3e0c1;
}
.imageContainer {
  display: flex;
  justify-content: center;
  position: relative;
  overflow: visible;
  background-color: #f3e0c14a;
  border-radius: 20px;
  opacity: 0;
  transform: translateY(20px);
  transition:
    opacity 0.9s ease,
    transform 0.9s ease;
}

.imageContainer.fade-in {
  opacity: 1;
  transform: translateY(0);
}

.side2 {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: flex-start;
  width: 100%;
  gap: 10px;
  padding: 10px;
  opacity: 0;
  transform: translateY(20px);
  transition:
    opacity 0.9s ease,
    transform 0.9s ease;
  padding: 20px;
}

.side2.fade-in {
  opacity: 1;
  transform: translateY(0);
}

.introContent {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  width: 100%;
  border: none;
}

.meImage {
  width: 75%;
  /* max-width: 60%; */
  /* border-radius: 20px; */
  transition:
    transform 0.9s ease,
    box-shadow 0.9s ease;
  margin-top: -25px;
  z-index: 2;
}
</style>
