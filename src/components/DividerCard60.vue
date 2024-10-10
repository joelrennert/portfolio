<template>
  <div class="hero">
    <!-- <img src="../assets/bh.png" class="heroImage" /> -->
  </div>
</template>
<script>
export default {}
</script>
<style scoped>
.introTitle {
  font-size: 2.5rem;
  font-style: italic;
  /* font-family: "Ga Maamli"; */
}
.subtitle {
  font-size: 1rem;
  font-weight: 500;
}

.introContent {
  display: flex;
  flex-direction: column;
  justify-content: left;
  width: 100%;
  padding: 20px;
  padding-left: 8%;
  gap: 10px;
}

.heroTitle {
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 10%;
}
h1 {
  font-family: 'IBM Plex Mono';
  font-size: 1rem;
  line-height: 0.5;
}
.buttonContainer {
  display: flex;
  padding-bottom: 15px;
}
button {
  font-size: 1rem;
  border-radius: 6px;
  border-style: none;
  background-color: black;
  color: white;
  padding: 6px;
  font-family: 'IBM Plex Mono';
}

.heroSubtitle {
  display: flex;
  justify-content: right;
  align-items: center;
  font-style: italic;
}

.h2Text {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  font-size: 3rem;
  /* font-style: italic; */
  font-family: 'Ga Maamli';
}
.startButton {
  display: flex;
  justify-content: left;
  width: 100%;
  padding-top: 2px;
  padding-bottom: 2px;
  padding-left: 20px;
  padding-right: 20px;
  border-radius: 30px;
  font-family: 'Courier New', Courier, monospace;
  font-size: 40px;
  border-style: none;
  background-color: black;
  color: white;
}
.heroText {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: left;
  width: 80%;
  height: 80%;
  gap: 12px;
  padding-bottom: 20px;
  text-align: center;
  font-size: 1rem;
}
.heroImage {
  width: 5%;
  border-radius: 20px;
}
.hero {
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  align-items: center;
  width: 60vw;
  height: 2.9vh;
  /* padding: 10px;
  padding-top: 20px; */
  background-color: rgb(251, 243, 230);
  border-radius: 12px;
  margin-top: 20px;
  /* box-shadow:
    0px 6px 6px -3px rgba(0, 0, 0, 0.2),
    0px 10px 14px 1px rgba(0, 0, 0, 0.14),
    0px 4px 18px 3px rgba(0, 0, 0, 0.12); */
}
</style>
