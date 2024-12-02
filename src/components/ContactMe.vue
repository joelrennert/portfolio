<template>
  <div class="hero" id="contact">
    <div class="side1">
      <div class="heroTitle">
        <div class="h2Text">
          <div class="imageContainer">
            <img src="../assets/3dside.png" class="contactImage" />
          </div>
          <h2>drop me</h2>
          <h2>a line</h2>
          <div class="sideTextContainer">
            <p class="side1Led">🟢</p>
            <p class="side1Text">Available for permanent and contract work</p>
          </div>
        </div>
      </div>
    </div>
    <div class="introContent border">
      <div ref="side2Ref" class="side2">
        <p>Thanks for stepping in</p>
        <p>Wanna say hi?</p>
        <p>Reach out through the form or find me here</p>
        <div class="socialIcons">
          <a href="https://www.linkedin.com/in/joelrennert/" target="_blank"
            ><img src="../assets/li.png" width="40"
          /></a>
          <a href="https://github.com/joelrennert" target="_blank"
            ><img src="../assets/github-mark.png" width="40"
          /></a>
        </div>
        <div class="contactFormContainer">
          <ContactForm />
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import ContactForm from '@/components/ContactForm.vue'
import { ref, onMounted, onUnmounted } from 'vue'

const side2Ref = ref(null)
let observer = null

onMounted(() => {
  const options = {
    threshold: 0.8 // Trigger when 50% of the element is visible
  }

  observer = new IntersectionObserver((entries) => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        entry.target.classList.add('fade-in')
        const contactImage = document.querySelector('.contactImage')
        if (contactImage) {
          contactImage.classList.add('rotate')
        }
        observer.unobserve(entry.target)
      }
    })
  }, options)

  if (side2Ref.value) observer.observe(side2Ref.value)
})

onUnmounted(() => {
  if (side2Ref.value && observer) observer.unobserve(side2Ref.value)
})
</script>

<style scoped>
.led {
  width: 40px;
  height: 40px;
}

.side2 {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: flex-start;
  width: 80%;
  height: 100%;
  gap: 20px;
  padding: 20px;
  max-width: 800px;
  border-radius: 20px;

  opacity: 0;
  transform: translateY(20px);
  transition:
    opacity 0.5s ease,
    transform 0.5s ease;
}

.side2.fade-in {
  opacity: 1;
  transform: translateY(0);
}

.imageContainer {
  display: flex;
  justify-content: flex-end;
  padding: 20px;
}

.contactImage {
  width: 40%;
  border-radius: 20px;
  transition: transform 1s ease;
}

.contactImage.rotate {
  transform: rotate(-8deg);
}

.side1Led {
  font-size: 0.4rem;
  font-family: 'IBM Plex Mono';
  padding: 7px;
  color: #f3e0c1;
  letter-spacing: 0px;
  text-shadow: 0 0 10px rgba(9, 253, 9, 0.271);
}

.side1Text {
  font-size: 0.8rem;
  font-family: 'IBM Plex Mono';
  font-style: italic;
  padding: 7px;
  color: #f3e0c1;
  letter-spacing: 0px;
}

p {
  font-size: 1.3rem;
  font-family: 'IBM Plex Mono';
  font-style: italic;
  padding: 7px;
  color: #f3e0c1;
  font-weight: 400;
  letter-spacing: 0px;
}

.sideTextContainer {
  display: flex;
  justify-content: flex-end;
  align-items: center;
  width: 100%;
}

.socialIcons {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 30%;
  padding: 10px;
  gap: 20px;
  background-color: rgba(245, 222, 179, 0.056);
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.161);
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  border-radius: 12px;
}

.socialIcons img {
  background-color: white;
  padding: 5px;
  height: 50px;
  width: 50px;
  border-radius: 6px;
}

.introContent {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  width: 100%;
  max-width: 800px;
  flex-grow: 1;
}

.side1 {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  align-items: center;
  width: 80%;
  flex-grow: 1;
  padding: 60px;
}

.heroTitle {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

.h2Text {
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  align-items: flex-end;
  font-size: 4rem;
  font-family: 'Poppins';
  color: #ff6641;
  flex-grow: 1;
  transition:
    padding 0.6s ease,
    text-shadow 0.6s ease,
    background 2s ease;
  letter-spacing: -7px;
  color: #f3e0c1;
  padding-left: 5px;
  padding-right: 5px;
  text-shadow: 2px 2px 4px rgba(218, 218, 201, 0.339);
}

.hero {
  display: flex;
  justify-content: center;
  width: 100vw;
  height: 100%;
  padding: 60px;
  align-items: stretch;
  border-bottom: 1px solid rgba(255, 255, 255, 0.184);
  border-bottom-left-radius: 40px;
  border-bottom-right-radius: 40px;
}

/* Responsive Styles */

/* For small screens like phones (max-width: 600px) */
@media (max-width: 600px) {
  .hero {
    flex-direction: column;
    padding: 30px;
  }

  .side1,
  .introContent {
    width: 100%;
    padding: 20px;
  }

  .h2Text {
    font-size: 2.5rem;
    align-items: center;
  }

  .contactImage {
    width: 70%;
  }

  .side2 {
    gap: 10px;
  }

  p {
    font-size: 1rem;
  }

  .socialIcons img {
    width: 30px;
    height: 30px;
  }
}

/* For medium screens like tablets (max-width: 900px) */
@media (max-width: 900px) {
  .hero {
    padding: 40px;
  }

  .side1,
  .introContent {
    width: 90%;
  }

  .h2Text {
    font-size: 3rem;
  }

  .contactImage {
    width: 60%;
  }

  p {
    font-size: 1.2rem;
  }

  .socialIcons img {
    width: 35px;
    height: 35px;
  }
}

/* For larger screens (above 900px) */
@media (min-width: 900px) {
  .h2Text {
    font-size: 4rem;
  }

  .contactImage {
    width: 40%;
  }

  p {
    font-size: 1.3rem;
  }
}
</style>
