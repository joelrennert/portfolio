<template>
  <div>
    <div class="firstRow">
      <div class="resumeSection">
        <h2 class="sectionTitle">Technical Skills</h2>
        <p>
          Spring Boot Java, PostgreSQL, HTML, CSS, JavaScript, Vue.js, Responsive Design, IntelliJ,
          Git, Unit Testing (JUnit), E/R diagrams, Integration Testing
        </p>
        <h2 class="sectionTitle">Education</h2>
        <h3 class="sectionSubtitle">Tech Elevator</h3>
        <p>Columbus, OH</p>
        <p>April 2023 - Dec 2023</p>
        <p>
          Graduated from a 30-week full-stack coding bootcamp learning how to create dynamic
          web-based software systems using Java providing 800+ hours of development education and
          application
        </p>
      </div>
      <div class="resumeSection">
        <h2 class="sectionTitle">Technical Experience</h2>
        <h3 class="sectionSubtitle">◍ Nasa Astronomy Picture of the Day Viewer</h3>
        <p>
          Created a Java application that connects to a publicly available NASA API and displays an
          image from the retrieved information. Java, Spring Boot
        </p>
        <h3 class="sectionSubtitle">◍ Music Gear</h3>
        <p>
          Created a RESTful Java application that connects to a PostgreSQL database containing
          information about currently owned music gear. CRUD functionality. Java, Spring Boot,
          PostgreSQL
        </p>
      </div>
    </div>
  </div>
</template>

<style scoped>
.firstRow {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: 100%;
  /* gap: 40px; */
  padding: 25px;
  /* margin-bottom: 20px; */
  border-radius: 20px;
}

.resumeSection {
  display: flex;
  flex-direction: column;
  flex-grow: 1;
  /* background-color: #76716adc; */
  border-radius: 16px;
  padding: 15px;
  gap: 15px;
}

.sectionTitle {
  font-size: 1.3rem;
  font-style: italic;
  font-weight: 500;
}

.sectionSubtitle {
  font-size: 1rem;
  font-weight: 600;
  padding-left: 10px;
}
</style>
