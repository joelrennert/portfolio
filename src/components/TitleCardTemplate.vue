<template>
  <div class="hero">
    <div class="projectImage">
      <img src="../assets/square2.png" class="heroImage" />
    </div>
    <div class="h2Text">
      <h2>wEb basEd</h2>
      <h2>projEcts</h2>
    </div>
    <div class="heroText">
      <h1>Web apps, Java APIs & Vue experiments</h1>
    </div>
  </div>
</template>

<script>
export default {}
</script>

<style scoped>
.projectImage {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100%;
  flex-grow: 1;
}

.h2Text {
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 2rem;
  font-family: 'Ga Maamli';
  padding-top: 20px;
  color: #ff6641;
}

.heroText {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  width: 100%;
  gap: 12px;
  text-align: center;
  font-size: 1rem;
}

.heroImage {
  width: 50%; /* Adjust as needed */
  border-radius: 20px;
  transition: padding 0.3s ease, background 0.3s ease;
}

.hero:hover .heroImage {
  padding: 3px;
  background: linear-gradient(
    302deg,
    rgba(255, 102, 65, 1) 0%,
    rgba(254, 209, 50, 1) 49%,
    rgba(35, 109, 246, 1) 100%
  );
}

.hero:hover {
  box-shadow:
    0px 6px 6px -3px rgba(0, 0, 0, 0.2),
    0px 10px 14px 1px rgba(0, 0, 0, 0.14),
    0px 4px 18px 3px rgba(0, 0, 0, 0.12);
  transition: box-shadow 0.3s ease;
}

.hero {
  display: flex;
  flex-direction: column;
  justify-content: space-evenly;
  align-items: center;
  width: 39.5vw; /* Adjust width as needed */
  height: 80vh; /* Adjust height as needed */
  padding: 30px;
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