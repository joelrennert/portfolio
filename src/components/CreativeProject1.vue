<template>
  <div class="hero">
    <div class="h2Text">
      <h2>unorb</h2>
    </div>
    <div class="projectImage">
      <img src="../assets/creative3.png" class="heroImage" />
    </div>
    <div class="heroText">
      <h1>creative project</h1>
      <h1>Drone based modular synthesis</h1>
      <h1>experimental sound art</h1>
    </div>
  </div>
</template>

<script>
export default {}
</script>

<style scoped>
.projectImage {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 50%;
  flex-grow: 1;
}

.heroText {
  display: flex;
  flex-direction: column;
  justify-content: space-evenly;
  align-items: center;
  width: 100%;
  height: 50%;
  gap: 12px;
  text-align: center;
  font-size: 1rem;
  flex-grow: 1;
}

h1 {
  font-family: 'IBM Plex Mono';
  font-size: 1.1rem;
  font-style: italic;
}

.h2Text {
  font-size: 2rem;
  font-family: 'Ga Maamli';
  /* font-family: 'IBM Plex Mono'; */
  /* font-style: italic; */
  text-align: center;
  /* letter-spacing: -4px; */
}

.heroImage {
  width: 25%;
  border-radius: 20px;
}

.hero {
  display: flex;
  flex-direction: column;
  justify-content: space-evenly;
  align-items: center;
  width: 49vw;
  height: 40vh;
  padding: 30px;
  padding-top: 20px;
  background-color: #a0a09f;
  /* border-radius: 20px; */
  /* margin-top: 20px; */
  transition: box-shadow 0.9s ease;
}

.hero:hover {
  transition: 0.3s ease;
}
</style>
