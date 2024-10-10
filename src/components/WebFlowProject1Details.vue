<template>
  <div class="hero">
    <div class="image">
      <div class="blank"></div>
      <div class="info">
        <h2>Scented Moments</h2>
        <p>2024</p>
      </div>

    </div>
  </div>
</template>

<script>
export default {
  name: 'WebFlowProject1Details'
}
</script>

<style scoped>
.blank {
  display: flex;
  flex-direction: column;
  flex-grow: 1;
}
.info {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: flex-start;
  background-color: rgba(0, 0, 0, 0.735);
  background-color: rgba(0, 0, 0, 0.758);
  /* justify-content: space-around; */
  height: 25%;
  width: 100%;
  padding: 10px;
  font-style: italic;
  /* border-top-right-radius: 16px; */
  border-bottom-left-radius: 12px;
  border-bottom-right-radius: 12px;
  /* color: black; */
}
.hero {
  display: flex;
  flex-direction: column;
  justify-content: space-between; 
  align-items: flex-start;
  width: 100%;
  height: 100%;
  border-radius: 16px;
  /* padding: 3px; */
  cursor: pointer;
  background-color: rgba(255, 255, 255, 0.197);
}
.image {
  display: flex;
  flex-direction: column;
  height: 100%;
  width: 100%;
  border-radius: 12px;
  background-image: url('../assets/webflow1.png');
  background-position: top;
  background-size: 150%;
  background-repeat: no-repeat;
  flex-grow: 1;
}


.hero:hover {
  box-shadow:
  0px 8px 8px -3px rgba(0, 0, 0, 0.2),
  0px 12px 16px 1px rgba(0, 0, 0, 0.14),
  0px 6px 20px 4px rgba(0, 0, 0, 0.12);

background-color: rgb(9, 8, 8);
transition: box-shadow 0.2s ease, background 0.1s ease-in-out;
}

.hero {
  transition: box-shadow 0.2s ease;
}
</style>