<template>
  <div v-if="visible" class="modal-overlay" @click.self="close">
    <div class="modal-content" @click="close">
      <button class="close-button" @click="close">X</button>
      <div class="modal-image-container">
        <img :src="imageSrc" alt="Modal content image" class="modal-image" />
      </div>
      <div class="modal-text-content">
        <div class="modal-text-container">
          <div class="modal-text-container-left">
            <div v-if="content">
              <h2>{{ content.title }}</h2>
              <p>{{ content.overview }}</p>
              <p>{{ content.technologies }}</p>
            </div>
          </div>
          <div class="modal-text-container-right">
            <p>{{ content.challenges }}</p>
            <div class="project-links">
              <p v-if="content.liveDemoLink">
                <a :href="content.liveDemoLink" target="_blank" class="modal-link">Live Demo</a>
              </p>
              <p v-if="content.githubLink">
                <a :href="content.githubLink" target="_blank" class="modal-link"
                  ><img class="github" src="../assets/gh.svg" /> GitHub</a
                >
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    visible: {
      type: Boolean,
      default: false
    },
    imageSrc: {
      type: String,
      default: ''
    },
    content: {
      type: Object,
      default: () => ({})
    }
  },
  emits: ['close'],
  methods: {
    close() {
      this.$emit('close')
    }
  }
}
</script>

<style scoped>
.project-links {
  display: flex;
  justify-content: flex-start;
  align-items: center;
  padding: 10px;
  padding-left: 0px;
  width: 100%;
  height: 100%;
  gap: 20px;
}

.project-links a {
  display: flex;
  align-items: center;
  text-decoration: none;
  color: inherit;
}

.github {
  height: 25px;
  margin-right: 5px;
}

.modal-text-container-left {
  display: flex;
  justify-content: flex-start;
  align-items: center;
  min-width: 30vw;
}

.modal-text-container-right {
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  align-items: flex-start;
  flex-grow: 1;
  width: 100%;
}

.modal-text-container {
  display: flex;
  background-color: rgb(190, 189, 189);
  width: 80vw;
  padding: 5px;
  padding-left: 20px;
  padding-right: 20px;
  border-radius: 16px;
  gap: 50px;
}

.modal-overlay {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.467);
  z-index: 50;
  cursor: pointer;
}

.modal-content {
  display: flex;
  flex-direction: column;
  justify-content: flex-end;
  align-items: center;
  background-color: #9d9b9bc0;
  border-radius: 16px;
  width: 95vw;
  height: 95vh;
  position: relative;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.102);
  backdrop-filter: blur(10px);
  -webkit-backdrop-filter: blur(10px);
  overflow-y: auto;
}

.modal-image-container {
  display: flex;
  justify-content: center;
  align-items: flex-end;
  width: 100%;
  height: 100%;
  padding: 20px;
  flex-grow: 1;
}

.modal-image {
  height: 85%;
  border-radius: 16px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.102);
}

.modal-text-content {
  display: flex;
  justify-content: center;
  align-items: center;
  background: rgba(163, 162, 162, 0.738);
  padding: 10px;
  color: #333;
  font-style: italic;
  width: 100%;
  margin-top: 20px;
  backdrop-filter: blur(10px);
  -webkit-backdrop-filter: blur(10px);
}

.close-button {
  position: absolute;
  top: 10px;
  right: 10px;
  background: none;
  border: none;
  font-size: 20px;
  cursor: pointer;
  color: white;
}
</style>
