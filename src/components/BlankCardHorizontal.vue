<template>
  <div class="hero border">
<!--     
    <img src="../assets/stack4.png" class="heroImage" />
    <img src="../assets/stack2.png" class="heroImage" />
    <img src="../assets/stack3.png" class="heroImage" />
   -->
  </div>
  
</template>
<script>
export default {}
</script>
<style scoped>
/* .border img {
  transition: 0.9s ease;
}

.border img:hover {
  transition: 0.5s ease;
  padding: 5px;
} */

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
.heroImage {
  height: 125%;
  border-radius: 20px;
  padding: 2px;
  background: linear-gradient(
    302deg,
    rgba(255, 102, 65, 1) 0%,
    rgba(254, 209, 50, 1) 49%,
    rgba(35, 109, 246, 1) 100%
  );
}
.hero {
  display: flex;
  flex-direction: row;
  justify-content: space-evenly;
  align-items: center;
  width: 100vw;
  height: 5px;

  background-color: rgb(252, 231, 198);

  margin-top: 1px;

    background: linear-gradient(112.1deg, rgb(41, 48, 72) 11.4%, rgb(72, 86, 133) 70.2%);
    background-color: #2b4162;
background-image: linear-gradient(315deg, #223147 0%, #192538 74%);

  cursor: default;
}
</style>
