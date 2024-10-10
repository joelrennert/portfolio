<script setup>
import DividerCardHalf from '@/components/DividerCardHalf.vue'
</script>

<template>
  <div class="contentContainer">
    <div class="dividerHalf">
      <DividerCardHalf />
      <DividerCardHalf />
    </div>
  </div>
</template>
<script>
export default {}
</script>
<style scoped>
.dividerHalf {
  display: flex;
  flex-direction: row;
  width: 79.5vw;
  gap: 20px;
}
.contentContainer {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 80vw;
  height: 100%;
  gap: 20px;
}
</style>
