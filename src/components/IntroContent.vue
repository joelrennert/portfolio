<template>
  <div class="introContent">
    <div class="heroImageContainer">
      <img
        v-for="(image, index) in images"
        :key="index"
        :src="image.src"
        :style="{
          transform: `translateY(${scrollOffsets[index]}px) rotate(${(index + 1) * 36}deg)`
        }"
        class="heroImage"
      />
    </div>
    <div class="introTextContainer">
      <div class="introTextLeft"></div>
      <h2 class="introTitleH2">I'm JOEL</h2>
      <br />
      <div class="introTextMid">
        <h3 class="introTitleH3">
          a laid back creative type based out of Columbus Ohio
          <!-- <h3 class="introTitleH3Creative"> creative </h3>
          <h3 class="introTitleH3">individual based out of Columbus Ohio</h3>

          <h3 class="introTitleH3"></h3> -->
        </h3>
      </div>
      <div class="introTextRight">
        <h3 class="introTitleH3"></h3>
      </div>
    </div>
  </div>
</template>

<script>
import img1 from '@/assets/3d.png'

export default {
  data() {
    return {
      images: [
        { src: img1 },
        { src: img1 },
        { src: img1 },
        { src: img1 },
        { src: img1 },
        { src: img1 },
        { src: img1 },
        { src: img1 },
        { src: img1 },
        { src: img1 }
      ],
      scrollOffsets: new Array(10).fill(0),
      scrollSpeeds: []
    }
  },
  mounted() {
    this.generateRandomSpeeds()
    window.addEventListener('scroll', this.handleScroll)
  },
  beforeUnmount() {
    window.removeEventListener('scroll', this.handleScroll)
  },
  methods: {
    generateRandomSpeeds() {
      this.scrollSpeeds = this.images.map(() => Math.random() * 0.1 + 0) // Adjust speed range as needed
    },
    handleScroll() {
      const scrollTop = window.pageYOffset || document.documentElement.scrollTop
      const scrollSpeedFactor = 2 // Adjust this factor to control how fast or slow the images move

      this.scrollOffsets = this.scrollOffsets.map(
        (_, index) => -scrollTop * this.scrollSpeeds[index] * scrollSpeedFactor
      )
    }
  }
}
</script>

<style scoped>
@keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}

.introTextLeft {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
}

.introTextMid {
  display: flex;
  /* flex-direction: column; */
  justify-content: center;
  align-items: center;
  width: 100%;
}

.introTextRight {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  width: 100%;
  flex-wrap: wrap;
}

.heroImageContainer {
  display: flex;
  justify-content: space-evenly;
  /* flex-wrap: wrap; */
  position: relative;
}

.heroImage {
  width: 100px;
  height: auto;
  opacity: 0;
  animation: fadeIn 0.2s forwards;
  animation-delay: calc(2.5s + 0.02s * var(--image-index));
  transform-origin: center center;
  transition:
    transform 0.3s ease,
    box-shadow 0.3s ease;
}

.heroImage:hover {
  transform: scale(1.05);
  transition: transform 0.3s ease;
}

.introContent {
  display: flex;
  /* flex-direction: column; */
  justify-content: flex-end;
  width: 100vw;
  height: 110vh;
  padding: 30px;
  /* gap: 20px; */
  padding-top: 20%;
  padding-bottom: 80px;
  font-family: 'Poppins';
  background-image: url('../assets/bluebg.png');

  background-image: url('../assets/whiteballs.png');
  background-size: cover;
  background-position: center top;
  border-bottom: 1px solid rgba(255, 255, 255, 0.184);
  border-bottom-left-radius: 40px;
  border-bottom-right-radius: 40px;
  margin-top: -100px;
}

.introTextContainer {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: flex-start;
  width: 100%;
  padding-left: 50px;

  padding: 30px;
  gap: 20px;
}

.introTitleH2 {
  font-size: 5rem;
  padding-bottom: 10px;
  font-style: italic;
  font-family: 'IBM Plex Mono';
  letter-spacing: -3px;
  line-height: 1;
  opacity: 1;
  color: #f3e0c1;
  color: #42484c;
  /* color: rgb(48, 48, 48); */
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
  /* text-align: center; */
  font-weight: 400;
}
.introTitleH3 {
  font-size: 2.8rem;
  padding-bottom: 10px;
  font-style: italic;
  font-family: 'IBM Plex Mono';
  letter-spacing: -3px;
  line-height: 1;
  opacity: 1;
  color: #f3e0c1;
  /* color: rgb(48, 48, 48); */
  color: #42484c;

  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
  /* text-align: center; */
}

.introTitleH3Creative {
  font-size: 2.7rem;
  padding-bottom: 10px;
  font-style: italic;
  font-family: 'IBM Plex Mono';
  letter-spacing: -3px;
  line-height: 1;
  opacity: 1;
  color: #42484c;
  /* color: rgb(48, 48, 48); */
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
  /* text-align: center; */
  padding-left: 30px;
  padding-right: 30px;
}

@media (max-width: 992px) {
  .heroImage {
    width: 80px;
  }

  .introTitle {
    font-size: 2.5rem;
    letter-spacing: -2px;
  }

  .introContent {
    padding: 20px;
    gap: 30px;
  }
}

@media (max-width: 768px) {
  .heroImage {
    width: 60px;
  }

  .introTitle {
    font-size: 2rem;
  }

  .introContent {
    padding: 15px;
    padding-top: 25%;
  }
}

@media (max-width: 430px) {
  .heroImage {
    width: 50px;
  }

  .introTitle {
    font-size: 1.8rem;
    letter-spacing: -1px;
  }

  .introContent {
    /* padding: 10px; */
    /* gap: 20px; */
  }
}
</style>
