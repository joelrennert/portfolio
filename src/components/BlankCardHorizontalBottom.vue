<template>
  <div class="hero border">
  
  </div>
</template>
<script>
export default {}
</script>
<style scoped>


.heroSubtitle {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
  padding: 10px;
  font-family: 'IBM Plex Mono';
  font-size: 1rem;
  /* line-height: 1; */
}

.h2Text {
  font-size: 2.2rem;
  /* font-style: italic; */
  font-family: 'Ga Maamli';
}

.heroText {
  display: flex;
  flex-direction: column;
  justify-content: baseline;
  align-items: left;
  width: 80%;
  height: 100%;
  /* gap: 12px; */
  padding: 20px;
  text-align: center;
  font-size: 1rem;
  flex-grow: 1;
}

.hero {
  display: flex;
  flex-direction: row;
  justify-content: space-evenly;
  align-items: center;
  width: 100vw;
  height: 5vh;
  padding: 20px;
  margin-top: 1px;
  /* box-shadow:
    0px 6px 6px -3px rgba(0, 0, 0, 0.2),
    0px 10px 14px 1px rgba(0, 0, 0, 0.14),
    0px 4px 18px 3px rgba(0, 0, 0, 0.12); */
    background-image: linear-gradient(to left, #2b4162 0%, #12100e 95%);


  cursor: default;
}
</style>
