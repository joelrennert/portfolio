<template>
  <div>
    <h2 class="sectionTitle">Education</h2>
    <h3 class="sectionSubtitle">◍ Tech Elevator</h3>
    <p>Columbus, OH</p>
    <p>April 2023 - Dec 2023</p>
    <div class="sectionText">
    <p>
      Graduated from a 30-week full-stack coding bootcamp learning how to create dynamic web-based
      software systems using Java providing 800+ hours of development education
    </p>
  </div>
  </div>
</template>

<script setup>
</script>
<style scoped>
.sectionText {
  display: flex;
  flex-direction: column;
  /* padding: 20px; */
  gap: 5px;
  width: 70%;
}
.sectionTitle {
  font-size: 1.3rem;
  font-style: italic;
  font-weight: 500;
  padding: 10px;
}
.sectionSubtitle {
  font-size: 1rem;
  font-weight: 600;
  padding-left: 20px;
  font-style: italic;
}
p {
  padding: 5px;
  padding-left: 40px;
}
</style>
