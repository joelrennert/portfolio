<template>
  <div class="introContent2">
    <div class="introContentSubSection">
      <div
        v-for="(item, index) in titles"
        :key="index"
        ref="introTitle2ndRow"
        class="introTitle2ndRow"
      >
        <template v-if="item.type === 'text'">
          <h2 :class="item.textSizeClass">{{ item.content }}</h2>
        </template>
        <template v-else-if="item.type === 'image'">
          <div class="imageContainer">
            <img
              :src="item.content"
              alt="Dynamic content"
              :class="['introImage', item.sizeClass, item.animationClass]"
            />
          </div>
        </template>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue'
import image3dhash from '@/assets/3dhash.png'
import cubes2 from '@/assets/cubes2.png'
import cubes3 from '@/assets/cubes3.png'
import cubes4 from '@/assets/cubes4.png'
import cubes from '@/assets/cubes.png'

const titles = ref([
  {
    type: 'image',
    content: image3dhash,
    sizeClass: 'small',
    animationClass: 'slideIn'
  },
  { type: 'text', content: '' },
  {
    type: 'text',
    content: 'I take things apart to see how they work',
    textSizeClass: 'title-small'
  },
  { type: 'text', content: 'and find ways to use them', textSizeClass: 'title-medium' },
  { type: 'text', content: 'outside their intended scope', textSizeClass: 'title-large' },
  { type: 'text', content: ' ', textSizeClass: 'title-medium' },
  {
    type: 'image',
    content: image3dhash,
    sizeClass: 'small',
    animationClass: 'slideIn'
  },
  { type: 'text', content: '' },
  { type: 'text', content: 'i spend my time in these realms', textSizeClass: 'title-medium' },
  { type: 'text', content: '' },
  { type: 'text', content: '' },

  { type: 'image', content: cubes2, sizeClass: 'medium' },
  { type: 'text', content: 'web app development', textSizeClass: 'title-medium' },
  { type: 'text', content: ' ', textSizeClass: 'title-medium' },
  { type: 'image', content: cubes3, sizeClass: 'medium' },
  { type: 'text', content: 'visual design & communication', textSizeClass: 'title-medium' },
  { type: 'text', content: ' ', textSizeClass: 'title-medium' },
  { type: 'image', content: cubes4, sizeClass: 'medium' },
  { type: 'text', content: 'modular synthesis  sound design', textSizeClass: 'title-medium' },
  { type: 'text', content: ' ', textSizeClass: 'title-medium' },
  { type: 'image', content: cubes, sizeClass: 'medium' },
  { type: 'text', content: 'circuit bending & electronics', textSizeClass: 'title-medium' },
  { type: 'text', content: ' ', textSizeClass: 'title-medium' },
  { type: 'image', content: image3dhash, sizeClass: 'small' }
])

const intro2Title = ref(null)
const introTitle2ndRow = ref([])

const observer = new IntersectionObserver(
  (entries) => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        entry.target.classList.add('visible')
        observer.unobserve(entry.target)
      }
    })
  },
  { threshold: 0.6 }
)

onMounted(() => {
  if (intro2Title.value) {
    observer.observe(intro2Title.value)
  }
  if (introTitle2ndRow.value) {
    introTitle2ndRow.value.forEach((el) => {
      observer.observe(el)
    })
  }
})

onUnmounted(() => {
  if (intro2Title.value) {
    observer.unobserve(intro2Title.value)
  }
  if (introTitle2ndRow.value) {
    introTitle2ndRow.value.forEach((el) => {
      observer.unobserve(el)
    })
  }
})
</script>

<style scoped>
.introContentSubSection {
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 95vw;
  /* background-color: rgba(124, 217, 163, 0.619); */
  background: radial-gradient(
    circle at 20% 20%,
    rgba(81, 112, 134, 0.8) 10%,
    rgba(208, 179, 156, 0.4) 30%
  );
  border-radius: 20px;
  gap: 50px;
  padding-top: 200px;
  padding-bottom: 60px;
}

.introContent2 {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: 100%;
  font-family: 'Poppins';
  border-bottom: 1px solid rgba(255, 255, 255, 0.184);
  border-bottom-left-radius: 40px;
  border-bottom-right-radius: 40px;
  margin-top: 50px;
  gap: 30px;
}

.introTitle2ndRow {
  display: flex;
  justify-content: center;
  align-items: center;
  font-family: 'Poppins';
  font-size: 3rem;
  font-style: italic;
  color: #f3e0c1;
  letter-spacing: -6px;
  line-height: 0.9;
  padding: 20px;
  opacity: 0;
  transition: opacity 1s ease-in-out;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
}

.introTitle2ndRow.visible {
  opacity: 1;
}

.introImageContainer {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: 100%;
  opacity: 1;
}

.introImage {
  width: 100%;
  height: auto;
  border-radius: 12px;
  opacity: 0;
  transform: rotate(6deg);
  transition:
    opacity 0.8s ease-in-out,
    transform 1s ease-in-out 0.2s;
}

.introImage.slideIn {
  animation: slideIn 1.5s ease-out forwards;
}

.introTitle2ndRow.visible .introImage {
  opacity: 1;
  transform: rotate(0deg);
}

.title-large {
  font-size: 4rem;
  letter-spacing: 10px;
}

.title-medium {
  font-size: 3rem;
  letter-spacing: 10px;
}

.title-small {
  font-size: 1.7rem;
  letter-spacing: 20px;
}

.introImage.small {
  max-width: 100px;
}

.introImage.medium {
  max-width: 300px;
}

@media (max-width: 1200px) {
  .introContent2 {
    width: 50vw;
  }
  .introTitle2ndRow {
    font-size: 2.5rem;
  }
}

@media (max-width: 768px) {
  .introContent2 {
    width: 100vw;
  }
  .introTitle2ndRow {
    font-size: 1.5rem;
    padding: 10px;
  }
  .introContentSubSection {
    width: 100%;
    display: flex;
  }
  .title-large {
    letter-spacing: normal;
    font-size: 2rem;
  }

  .title-medium {
    letter-spacing: normal;
    font-size: 1.5rem;
  }

  .title-small {
    letter-spacing: normal;
    font-size: 1rem;
    /* letter-spacing: 20px; */
  }
}

@media (max-width: 375px) {
  .introContent2 {
    width: 100vw;
  }
  .introTitle2ndRow {
    font-size: 1.5rem;
    padding: 10px;
  }
  .introContentSubSection {
    width: 100%;

    flex-wrap: wrap;
    text-wrap: wrap;
  }
  .title-large {
    font-size: 3rem;
    letter-spacing: 10px;
  }

  .title-medium {
    font-size: 2rem;
    letter-spacing: 10px;
  }

  .title-small {
    font-size: 1.4rem;
    letter-spacing: 20px;
  }
}
</style>
