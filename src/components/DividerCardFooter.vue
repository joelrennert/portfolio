<template>
  <div class="hero">
    <div>🫠</div>
    <div class="heroTitle">2024 Joel Rennert</div>
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
  padding: 2px;
  font-size: 1rem;
  font-style: italic;
  /* background: linear-gradient(
    302deg,
    rgb(69, 132, 248) 0%,
    rgb(251, 221, 109) 49%,
    rgb(249, 113, 78) 100%
  );
  -webkit-background-clip: text;
  background-clip: text;
  -webkit-text-fill-color: transparent; */
  background-size: 200% 100%; /* Ensure full coverage of text */
  padding-left: 5px;
  padding-right: 5px;
  color: #f3e0c1;
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
  /* flex-direction: column; */
  justify-content: center;
  align-items: center;
  width: 100vw;
  height: 5vh;
  margin-top: 1px;
  padding-left: 20px;
}
</style>
