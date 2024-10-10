<script setup>
import DividerCard40 from '@/components/DividerCard40.vue'
import DividerCard60 from '@/components/DividerCard60.vue'
</script>

<template>
  <div class="contentContainer">
    <div class="divider6040">
      <DividerCard60 />
      <DividerCard40 />
    </div>
  </div>
</template>
<script>
export default {}
</script>
<style scoped>
.divider6040 {
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
