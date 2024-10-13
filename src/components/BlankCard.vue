<template>
  <div class="hero border">
    <img src="../assets/stack2.png" class="heroImage" />
    <img src="../assets/stack.png" class="heroImage" />
    <img src="../assets/stack4.png" class="heroImage" />
  </div>
</template>
<script>
export default {}
</script>
<style scoped>
.border img {
  transition: 0.9s ease;
}

.border img:hover {
  /* box-shadow: 0 0 0 3px rgba(140, 140, 140, 0.6); */
  transition: 0.5s ease;
  padding: 5px;
}

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
  height: 30%;
  border-radius: 20px;
}
.hero {
  display: flex;
  flex-direction: column;
  justify-content: space-evenly;
  align-items: center;
  width: 40vw;
  height: 80vh;
  padding: 20px;
  background-color: rgb(251, 243, 230);
  border-radius: 20px;
  margin-top: 20px;
  /* box-shadow:
    0px 6px 6px -3px rgba(0, 0, 0, 0.2),
    0px 10px 14px 1px rgba(0, 0, 0, 0.14),
    0px 4px 18px 3px rgba(0, 0, 0, 0.12); */
  cursor: default;
}
/* .hero:hover {
  box-shadow:
    0px 6px 6px -3px rgba(0, 0, 0, 0.2),
    0px 10px 14px 1px rgba(0, 0, 0, 0.14),
    0px 4px 18px 3px rgba(0, 0, 0, 0.12);
  transition: box-shadow 0.3s ease;
}

.hero {
  transition: box-shadow 0.9s ease;
} */
</style>
