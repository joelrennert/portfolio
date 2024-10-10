<template>
  <div>
    <h2 class="sectionTitle">Technical Experience</h2>
    <h3 class="sectionSubtitle">◍ NasaPic</h3>
    <div class="sectionText">
      <p>
        Created a Java application that connects to a publicly available NASA API and displays an
        image from the retrieved information.
      </p>
      <p>∘ Java, Spring Boot</p>
    </div>
    <div class="sectionText">
      <h3 class="sectionSubtitle">◍ Music Gear</h3>
      <p>
        Created a RESTful Java application that connects to a PostgreSQL database containing
        information about currently owned music gear. CRUD functionality.
      </p>
      <p>∘ Java, Spring Boot, PostgreSQL</p>
    </div>
    <div class="sectionText">
      <h3 class="sectionSubtitle">◍ Transfer Credits</h3>
      <p>
        Created a RESTful Java application that connects to a PostgreSQL database containing
        information about currently owned music gear. CRUD functionality.
      </p>
      <p>∘ Java, Spring Boot, PostgreSQL</p>
    </div>
  </div>
</template>

<script setup></script>
<style scoped>
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
.sectionSubtitle {
  font-size: 1rem;
  font-weight: 600;
  padding-left: 20px;
  font-style: italic;
}
p {
  padding-left: 40px;
}
</style>
