<template>
  <div class="hero">
    <div class="h2Text">
      <h2>portfolio dEsign</h2>
    </div>
    <div class="projectImage">
      <img src="../assets/stack4.png" class="heroImage" />
    </div>
    <div class="heroText">
      <h1>webflow</h1>
      <h1>layout practice</h1>
      <h1>webflow site prototype</h1>
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
  height: 100%;
  flex-grow: 1;
}
.heroText {
  display: flex;
  flex-direction: column;
  justify-content: space-evenly;
  align-items: left;
  width: 100%;
  height: 100%;
  gap: 12px;
  text-align: center;
  font-size: 1rem;
  flex-grow: 1;
}

h1 {
  font-family: 'IBM Plex Mono';
  font-size: 1.1rem;
  font-style: italic;
  /* line-height: 1; */
}

.heroSubtitle {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
  padding: 10px;
}

.h2Text {
  font-size: 2rem;
  /* font-style: italic; */

  font-family: 'Ga Maamli';
}

.heroText {
  display: flex;
  flex-direction: column;
  justify-content: space-evenly;
  align-items: left;
  width: 100%;
  height: 100%;
  gap: 12px;
  text-align: center;
  font-size: 1rem;
  flex-grow: 1;
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
  width: 40vw;
  height: 40vh;
  padding: 30px;
  /* padding-top: 20px; */
  background-color: rgb(255, 255, 255);
  border-radius: 20px;
  cursor: pointer;
  /* box-shadow:
    0px 6px 6px -3px rgba(0, 0, 0, 0.2),
    0px 10px 14px 1px rgba(0, 0, 0, 0.14),
    0px 4px 18px 3px rgba(0, 0, 0, 0.12); */
}
.hero:hover {
  box-shadow: 0 0 0 2px #ff6641;
  transition: 0.3s ease;
}
.hero {
  transition: box-shadow 0.9s ease;
}
</style>
