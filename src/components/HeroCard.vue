<template>
  <div
    class="hero"
    :style="{
      height: heroHeight,
      borderBottomLeftRadius: borderBottomLeftRadius,
      borderBottomRightRadius: borderBottomRightRadius
    }"
  >
    <div class="topRow" :style="{ justifyContent: justifyContent, paddingLeft: topRowPaddingLeft }">
      <transition name="fade" appear>
        <div
          v-if="isImageLoaded"
          class="heroTitle border rotate"
          :style="{ transform: rotateStyle }"
        >

          <img src="@/assets/3dhash.png" class="heroImage" :style="{ transform: imageTransform }" />
        
        </div>
      </transition>

      <transition name="fade" appear>
        <div v-if="isTextLoaded" class="h2Text" :style="{ fontSize: titleFontSize }">
          <h2 class="insideH2">joelrennert</h2>
          <h1
            class="heroSubtitle"
            :style="{ fontSize: heroSubtitleFontSize, opacity: heroSubtitleOpacity }"
          >
            high functioning creative individual
          </h1>
        </div>
      </transition>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue'

const heroHeight = ref('100vh')
const rotateStyle = ref('rotateZ(0deg)')
const imageTransform = ref('scale(1.5)')
const titleFontSize = ref('7.5rem')
const heroSubtitleFontSize = ref('2rem')
const justifyContent = ref('space-around')
const isScrolledDown = ref(false)
const isClicked = ref(false)
const borderBottomLeftRadius = ref('0px')
const borderBottomRightRadius = ref('0px')
const topRowPaddingLeft = ref('100px')
const isImageLoaded = ref(false)
const isTextLoaded = ref(false)
const isCTALoaded = ref(false)
const heroSubtitleOpacity = ref(1)

let scrollTimeout = null

const handleScroll = () => {
  if (scrollTimeout) clearTimeout(scrollTimeout)

  scrollTimeout = setTimeout(() => {
    const scrollPosition = window.scrollY
    if (!isClicked.value) {
      if (scrollPosition >= 55) {
        heroHeight.value = '6vh'
        rotateStyle.value = 'rotateZ(-8deg)'
        imageTransform.value = 'scale(0.4)'
        titleFontSize.value = '1.6rem'
        heroSubtitleFontSize.value = '2rem'
        heroSubtitleOpacity.value = 0 
        justifyContent.value = 'space-between'
        topRowPaddingLeft.value = '10px'
        isScrolledDown.value = true
        borderBottomLeftRadius.value = '0px'
        borderBottomRightRadius.value = '0px'
      } else {
        heroHeight.value = '100vh'
        rotateStyle.value = 'rotateZ(0deg)'
        imageTransform.value = 'scale(1.5)'
        titleFontSize.value = '8rem'
        heroSubtitleFontSize.value = '2rem'
        heroSubtitleOpacity.value = 1 
        justifyContent.value = 'space-between'
        topRowPaddingLeft.value = '100px'
        isScrolledDown.value = false
        borderBottomLeftRadius.value = '0px'
        borderBottomRightRadius.value = '0px'
      }
    }
  }, 100)
}

const handleClick = () => {
  isClicked.value = !isClicked.value
  if (isClicked.value) {
    heroHeight.value = '4vh'
    rotateStyle.value = 'rotateZ(-8deg)'
    imageTransform.value = 'scale(0.3)'
    titleFontSize.value = '1.3rem'
    heroSubtitleFontSize.value = '1rem'
    heroSubtitleOpacity.value = 0 
    justifyContent.value = 'space-between'
    topRowPaddingLeft.value = '10px'
    isScrolledDown.value = true
    borderBottomLeftRadius.value = '0px'
    borderBottomRightRadius.value = '0px'
  } else {
    handleScroll()
    heroSubtitleOpacity.value = 1 
  }
}

const toggleHeightAfterDelay = () => {
  setTimeout(() => {
    handleClick()
  }, 2000)
}

onMounted(() => {
  window.addEventListener('scroll', handleScroll)
  setTimeout(() => {
    isImageLoaded.value = true
    setTimeout(() => {
      isTextLoaded.value = true
      setTimeout(() => {
        isCTALoaded.value = true
      }, 500) 
    }, 500) 
  }, 0) 

  toggleHeightAfterDelay()
})

onUnmounted(() => {
  window.removeEventListener('scroll', handleScroll)
})
</script>

<style scoped>
p {
  font-size: 1.2rem;
}

.hero {
  display: flex;
  flex-direction: column;
  justify-content: space-around;
  align-items: flex-start;
  width: 100vw;
  height: 10vh;
  cursor: default;
  padding-bottom: 10px;
  transition:
    height 0.6s ease,
    border-bottom-left-radius 0.6s ease,
    border-bottom-right-radius 0.6s ease;
  background-image: url('../assets/bluebg.png');
  background-size: cover;
  background-repeat: no-repeat;
  background-position: top;
  background-color: #373532;
}

.heroTitle {
  display: flex;
  justify-content: left;
  align-items: center;
  padding-left: 20px;
  margin-top: -5px;
  padding-bottom: 5px;
  transition: transform 0.5s ease;
  /* overflow: hidden; */
  overflow: visible;
}

.topRow {
  display: flex;
  align-items: flex-start;
  gap: 5%;
  width: 100%;
  padding-right: 100px;
  padding-left: 100px;
  transition:
    justify-content 0.6s ease,
    padding-left 0.6s ease;
}

.h2Text {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: flex-end;
  text-align: center;
  transition: font-size 0.5s ease;
  margin-bottom: 20px;
  
}

.insideH2 {
  color: #f3e0c1;
  font-family: 'Baumans';
  letter-spacing: -4px;
  line-height: 0.9;
  margin-top: -20px;
  padding: 20px;
}

.heroSubtitle {
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 2rem;
  font-style: italic;
  letter-spacing: -1px;
  transition: font-size 0.1s ease;
  color: #f3e0c1;
  filter: drop-shadow(0 0 3px rgba(255, 255, 255, 0.4));
  transition: opacity 0.1s ease;
}

.heroImage {
  height: 10%;
  max-width: 200px;
  border-radius: 20px;
  padding: 10px;
  background: rgba(255, 255, 255, 0.25);
  backdrop-filter: blur(4px);
  -webkit-backdrop-filter: blur(4px);
  border-radius: 20px;
  border: 1px solid rgba(255, 255, 255, 0.18);
  transition: transform 0.5s ease;
  margin-top: -55px;
  transform-origin: center center; 
  transition: transform 0.5s ease, top 0.5s ease; 
}

.rotate .heroImage:hover {
  transform: rotateZ(2deg) scale(1.5);
}

/* Media Queries for Responsiveness */
@media (max-width: 1200px) {
  .topRow {
    padding-left: 50px;
    padding-right: 50px;
  }
  .heroTitle {
    padding-left: 20px;
  }
  .insideH2 {
    /* font-size: 1.6rem; */
  }
  .heroSubtitle {
    font-size: 1.8rem;
  }
  .heroImage {
    height: 100%;
  }
}

@media (max-width: 900px) {
  .topRow {
    padding-left: 20px;
    padding-right: 20px;
  }
  .insideH2 {
    font-size: 1.6rem;
  }
  .heroSubtitle {
    font-size: 1.6rem;
  }
  .heroImage {
    width: 90%;
    max-width: 150px;
  }
}

@media (max-width: 600px) {
  .topRow {
    align-items: center;
    padding: 10px;
    gap: 10px;
  }
  .heroTitle {
    padding-left: 0;
  }
  .insideH2 {
    font-size: 1.6rem;
  }
  .heroSubtitle {
    font-size: 1.2rem;
  }
  .heroImage {
    width: 80%;
    max-width: 120px;
  }
}
</style>
