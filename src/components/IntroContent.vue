<template>
  <div class="introContent">
    <div class="introTextContainer">
      <div class="introTextLeft">
        <h2 class="introTitleH2">I'm JOEL</h2>
      </div>
      <div class="introTextMid">
        <h3 class="introTitleH3">I make web apps</h3>
        <h3 class="introTitleH3">& create art</h3>
        <h3 class="introTitleH3">with the internet</h3>
        <a href="#featured" class="scroll-button">
          <button class="btn">
            <span class="italicText">Learn more</span>
            <span class="arrow"> ⬇︎</span>
          </button>
        </a>
      </div>
    </div>

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
.italicText {
  font-style: italic;
}

.arrow {
  font-style: normal; /* Remove italic from the arrow */
}

.scroll-button {
  display: flex;
  justify-content: center;
  align-items: center;
  text-decoration: none;
}

.btn {
  background-color: #549dbfdc;
  color: #ffffff;
  padding: 5px 20px;
  border: none;
  border-radius: 30px;
  font-size: 16px;
  font-family: 'Poppins', sans-serif;
  font-weight: 400;
  cursor: pointer;
  transition: all 0.3s ease-in-out;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  font-style: italic;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
  background-color: #549dbf;
}

.btn:hover {
  background-color: #549dbf9c;
  box-shadow: 0 6px 10px rgba(0, 0, 0, 0.15);
}

.btn:active {
  background-color: #3a6787;
  transform: translateY(1px);
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

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
  /* gap: 25px; */
  width: 70%;
  padding-left: 10%;
}

.introTextMid {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: left;
  text-align: center;
  gap: 35px;
  width: 100%;
  flex-grow: 3;
}

.introTextRight {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
  text-align: center;
  /* gap: 25px; */
  width: 100%;
}

.heroImageContainer {
  display: flex;
  justify-content: space-evenly;
  /* flex-wrap: wrap; */
  position: relative;
  opacity: 0;
  animation: fadeIn 1s ease forwards;
  animation-delay: 0.1s;
  margin-bottom: 2%;
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
  flex-direction: column;
  justify-content: flex-end;
  width: 100vw;
  height: 110vh;
  padding: 30px;
  /* gap: 20px; */
  padding-top: 20%;
  padding-bottom: 80px;
  font-family: 'Poppins';
  background-image: url('../assets/bluebg.png');
  /* background-image: url('../assets/scales.png'); */
  background-image: url('../assets/heroimage.jpg');

  background-size: 200%;
  background-position: left center;
  border-bottom: 1px solid rgba(255, 255, 255, 0.184);
  border-bottom-left-radius: 40px;
  border-bottom-right-radius: 40px;
  margin-top: -10%;
}

@keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}

.introTextContainer {
  display: flex;
  justify-content: space-evenly;
  align-items: center;
  width: 100%;
  /* margin-top: 2%; */
  padding: 20px;
  margin-bottom: 10%;
  gap: 35px;
  /* background: rgba(222, 212, 184, 0.154); */
  /* background-color: rgba(35, 144, 254, 0.051); */

  /* border-radius: 16px;
  backdrop-filter: blur(2px);
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
  border: 1px solid rgba(255, 255, 255, 0.18); */

  opacity: 0;
  animation: fadeIn 1.5s ease forwards;
  animation-delay: 0.5s;
}

.introTitleH2 {
  font-size: 7rem;
  padding-bottom: 10px;
  font-style: italic;
  font-family: 'IBM Plex Mono';
  letter-spacing: -3px;
  line-height: 1;
  opacity: 1;
  color: #f3e0c1;
  /* color: #383535; */
  /* color: #ffffff; */
  /* color: rgb(48, 48, 48); */
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
  /* text-align: center; */
  font-weight: 400;
}

.introTitleH3 {
  font-size: 4rem;
  padding-bottom: 10px;
  font-style: italic;
  font-family: 'IBM Plex Mono';
  letter-spacing: -3px;
  line-height: 1;
  opacity: 1;
  color: #383535;
  color: #faf8f5eb;

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



@media (max-width: 1024px) {
  .heroImage {
    width: 80px;
  }

  .introTitle {
    font-size: 2.5rem;
    letter-spacing: -2px;
  }

  .introContent {
    /* padding: 20px; */
    gap: 30px;
    margin-top: -20%;
  }
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
    width: 8%;
  }

  .introTitle {
    font-size: 1.8rem;
    letter-spacing: -1px;
  }

  .introContent {
    /* padding: 10px; */
    /* gap: 20px; */
    margin-top: -80%;
  }
}
</style>
