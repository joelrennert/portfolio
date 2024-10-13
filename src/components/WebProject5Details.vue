<template>
  <div class="hero">
    <div class="image"></div>
    <!-- <div class="info">
      <h2>Music Gear</h2>
      <p>Detailed information</p>
    </div>
    <div class="button">
      <p class="cta">click anywhere to open?</p>
    </div> -->
  </div>
</template>

<script>
export default {
  name: 'WebProject1Details'
}
</script>

<style scoped>
.button {
  display: flex;
  flex-direction: column;
  justify-content: flex-end;
  border-radius: 10px;
  padding: 10px;
  background-color: #236df6;
  color: white;
  font-style: italic;
  line-height: 1.5;
  cursor: pointer;
}

.image {
  display: flex;
  height: 100%;
  width: 100%;
  background-position: center;
  background-size: cover;
  background-repeat: no-repeat;
  border-radius: 16px;

  background-image: url('../assets/frisbee.png');
  background-position: right bottom;
  background-size: 244%;
  background-repeat: no-repeat;
  flex-grow: 1;
}
.info {
  display: flex;
  flex-direction: column;
  justify-content: flex-end;
  align-items: flex-start;
  background-color: rgba(0, 0, 0, 0.735);
  background-color: rgba(0, 0, 0, 0.758);
  /* justify-content: space-around; */
  height: 30%;
  width: 100%;
  padding: 10px;
  font-style: italic;
  /* border-top-right-radius: 16px; */
  border-bottom-left-radius: 16px;
  border-bottom-right-radius: 16px;
  /* color: black; */
}
.hero {
  display: flex;
  flex-direction: column;
  justify-content: space-evenly;
  align-items: center;
  width: 25vw;
  height: 20vh;
  padding: 5px;
  /* background-color: rgb(251, 243, 230); */
  border-radius: 20px;
  /* margin-top: 20px; */
  /* gap: 10px; */
  /* box-shadow:
    0px 6px 6px -3px rgba(0, 0, 0, 0.2),
    0px 10px 14px 1px rgba(0, 0, 0, 0.14),
    0px 4px 18px 3px rgba(0, 0, 0, 0.12); */
  cursor: pointer;
  box-shadow:
    0px 6px 6px -3px rgba(0, 0, 0, 0.2),
    0px 10px 14px 1px rgba(0, 0, 0, 0.14),
    0px 4px 18px 3px rgba(0, 0, 0, 0.12);
  cursor: pointer;
  margin-top: 20px;
  background-color: rgba(255, 255, 255, 0.197);


}

.hero:hover {
  box-shadow:
    0px 8px 8px -3px rgba(0, 0, 0, 0.2),
    0px 12px 16px 1px rgba(0, 0, 0, 0.14),
    0px 6px 20px 4px rgba(0, 0, 0, 0.12);

  background-color: rgb(0, 0, 0);
  transition:
    box-shadow 0.2s ease,
    background 0.1s ease-in-out;
}

.hero {
  transition: box-shadow 0.2s ease;
}
</style>
