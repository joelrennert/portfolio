<script setup>
import { ref, onMounted } from 'vue'

const rotateStyle = ref('rotateZ(0deg)')

const setInitialRotationWithDelay = () => {
  setTimeout(() => {
    rotateStyle.value = 'rotateZ(-2deg)'
  }, 2000)
}

onMounted(() => {
  setInitialRotationWithDelay()
})
</script>
<template>
  <div class="hero">
    <div class="topRow">
      <div class="heroTitle border rotate" :style="{ transform: rotateStyle }">
        <img src="../assets/creative3.png" class="heroImage" />
      </div>
      <div class="h2Text ">
        <h2>joEl rEnnErt</h2>
        <h1 class="heroSubtitle">Wheb Developeur</h1>
      </div>
    </div>
    <div class="introContent">
      <h2 class="introTitle">Hiwsup?</h2>
      <p class="subtitle">I'm Joel, a laid back creative type based out of Columbus Ohio</p>
      <p></p>
      <div class="bottomRow">
        <div class="bottomRowLeft">
          <p class="">Me at a glance:</p>
          <p class="subsubtitle">◍ Budding Web App Developer</p>
          <p class="subsubtitle">◍ Experimental Sound Artist</p>
          <p class="subsubtitle">◍ Aspiring Visual Artist</p>
        </div>
        <div class="bottomRowRight">
          <p class="cta">Scroll ⬇︎</p>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>


.rotate {
  transition: transform 0.5s ease; /* Apply transition to transform property */
}

.rotate img:hover {
  transform: rotateZ(2deg); /* Rotate image on hover */
}

.rotate:not(:hover) img {
  transform: rotateZ(0deg); /* Ensure no rotation when not hovered */
}

.topRow {
  display: flex;
  justify-content: space-around;
  align-items: center;
  gap: 5%;
  flex-grow: 1;
  width: 100%;
  padding: 20x;
}
.cta {
  border-radius: 10px;
  padding: 10px;
  background-color: #236df6;
  color: white;
  font-style: italic;
  line-height: 1.5;
}
.bottomRow {
  display: flex;
  justify-content: space-between;
}
.bottomRowRight {
  display: flex;
  justify-content: flex-end;
  align-items: flex-end;
}

.bottomRowLeft {
  display: flex;
  flex-direction: column;
  gap: 10px;
}

.introTitle {
  font-size: 2.5rem;
  font-style: italic;
  /* font-family: "Ga Maamli"; */
  color: #236df6;
}
.subtitle {
  font-size: 1.1rem;
  font-weight: 500;
}

.subsubtitle {
  font-size: 1rem;
  font-style: italic;
  padding-left: 1px;
}

.introContent {
  display: flex;
  flex-direction: column;
  justify-content: left;
  width: 100%;
  padding: 25px;
  /* padding-left: 8%; */
  gap: 10px;
}

.heroTitle {
  display: flex;
  justify-content: center;
  align-items: center;
}
h1 {
  font-family: 'IBM Plex Mono';
  font-size: 1rem;
  line-height: 0.5;
}

.heroSubtitle {
  display: flex;
  justify-content: right;
  align-items: center;
  font-style: italic;
  width: 94%;
  flex-grow: 1;
  color: black;
}







.h2Text {
  display: flex;
  flex-direction: column;
  justify-content: flex-end;
  /* width: 40vw; */
  align-items: center;
  font-size: 4.4rem;
  /* font-style: italic; */
  font-family: 'Ga Maamli';
  padding-right: 20px;
  color: #ff6641;

  /* color: #f1e9e5;
  text-shadow: 0 13.36px 8.896px #a98c5e,0 -2px 1px #fff; */

  /* cool maybe */
  /* text-shadow: 
            0 0.03125em 0 #0c2ffb, 
            0 0.0625em 0 #2cfcfd, 
            0 -0.03125em 0 #fb203b, 
            0 -0.0625em 0 #fefc4b; */
}

.heroText {
  display: flex;
  flex-direction: column;
  justify-content: flex-end;
  align-items: left;
  width: 80%;
  height: 80%;
  gap: 12px;
  padding-bottom: 20px;
}
.heroImage {
  width: 80%;
  border-radius: 20px;

  padding: 5px;
  background: rgb(255, 102, 65);
  background: linear-gradient(
    302deg,
    rgba(255, 102, 65, 1) 0%,
    rgba(254, 209, 50, 1) 49%,
    rgba(35, 109, 246, 1) 100%
  );
  box-shadow:
    0px 6px 6px -3px rgba(0, 0, 0, 0.2),
    0px 10px 14px 1px rgba(0, 0, 0, 0.14),
    0px 4px 18px 3px rgba(0, 0, 0, 0.12);
}

/* .blur img {
  transition: 1s ease;
}

.blur img:hover {
  -webkit-filter: blur(5px);
  transition: 1s ease;
} */

.border img {
  transition: 0.9s ease;
}

.border img:hover {
  box-shadow: 0 0 0 3px rgba(140, 140, 140, 0.6);
  transition: 0.5s ease;
}

.hero {
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  align-items: center;
  width: 100vw;
  height: 90vh;
  padding: 10px;
  padding-top: 40px;
  background-color: rgb(251, 243, 230);
  /* border-radius: 20px; */
  /* margin-top: 5px; */
  /* box-shadow:
    0px 6px 6px -3px rgba(0, 0, 0, 0.2),
    0px 10px 14px 1px rgba(0, 0, 0, 0.14),
    0px 4px 18px 3px rgba(0, 0, 0, 0.12); */
  cursor: default;
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
