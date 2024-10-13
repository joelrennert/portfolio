<template>
  <div class="hero border">
    <img src="../assets/square2.png" class="heroImage" />
    <div class="h2Text">
      <h2>wEb basEd</h2>
      <h2>projEcts</h2>
    </div>
    <div class="heroText">
      <p>Web apps, Java APIs & Vue experiments</p>
    </div>
  </div>
</template>
<script>
export default {}
</script>
<style scoped>
.border img {
  transition:
    padding 0.3s ease,
    background 0.3s ease,
    box-shadow 0.3s ease;
  margin: -5px; /* Negative margin to offset padding */
}

.hero:hover img {
  /* box-shadow: 0 0 0 2px rgba(140, 140, 140, 0.6); */
  padding: 3px;
  background: linear-gradient(
    302deg,
    rgba(255, 102, 65, 1) 0%,
    rgba(254, 209, 50, 1) 49%,
    rgba(35, 109, 246, 1) 100%
  );
}

.hero:hover {
  box-shadow: 0 0 0 2px #ff6641;
  transition: box-shadow 0.3s ease;
}

.heroSubtitle {
  font-size: 8rem;
  display: flex;
  justify-content: center;
  padding: 10px;
  line-height: 1;
  font-style: normal;
  transform: scale(0.9) rotate(0deg) translate(0px, 0px) skew(20deg, 0deg);
}

.h2Text {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  font-size: 4rem;
  font-family: 'Ga Maamli';
  padding-top: 20px;
  color: #ff6641;
}

.heroText {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  width: 90%;
  height: 100%;
  gap: 5px;
  text-align: left;
  font-size: 1rem;
  font-style: italic;
}

.heroImage {
  width: 55%;
  border-radius: 20px;
}

.hero {
  display: flex;
  flex-direction: column;
  justify-content: space-evenly;
  align-items: center;
  width: 40vw;
  height: 80vh;
  padding: 10px;
  padding-top: 40px;
  background-color: rgb(251, 243, 230);
  border-radius: 20px;
  margin-top: 20px;
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
