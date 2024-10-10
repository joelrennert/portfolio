<template>
  <div class="resume">
    <img src="../assets/resume.png" width="85%"/>
  </div>
</template>

<script setup></script>
<style scoped>
.resume {
  display: flex;
  justify-content: center;
}
img {
  border-radius: 12px;
}
.sectionText {
  display: flex;
  flex-direction: column;
  padding: 20px;
  gap: 5px;
}
.sectionTitle {
  font-size: 1.3rem;
  font-style: italic;
  font-weight: 500;
  padding: 10px;
}
p {
  padding: 10px;
}
</style>
