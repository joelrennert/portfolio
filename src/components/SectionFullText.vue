<template>
  <div class="introContent">
    <div class="titleContainer">
      <div class="topTitle">
        <p class="resumeTitle">Joel Rennert</p>
        <p class="sectionSubtitle">Columbus, OH</p>
      </div>
    </div>
  </div>
  <div class="resumeSection">
    <h2 class="sectionTitle">Summary</h2>
    <p>
      Creative and intuitive problem solver with a background in fabrication, pursuing a Junior
      Developer role in order to improve processes and heighten positive user experiences while
      constantly improving my skillset.
    </p>
  </div>
  <div class="resumeSection">
    <h2 class="sectionTitle">Technical Skills</h2>
    <p>
      Spring Boot Java, PostgreSQL, HTML, CSS, JavaScript, Vue.js, Responsive Design, IntelliJ, Git,
      Unit Testing (JUnit), E/R diagrams, Integration Testing
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

  <div class="resumeSection">
    <h2 class="sectionTitle">Education</h2>
    <h3 class="sectionSubtitle">◍ Tech Elevator</h3>
    <p>Columbus, OH</p>
    <p>April 2023 - Dec 2023</p>
    <p>
      Graduated from a 30-week full-stack coding bootcamp learning how to create dynamic web-based
      software systems using Java providing 800+ hours of development education and application
    </p>
  </div>

  <div class="resumeSection">
    <h2 class="sectionTitle">Professional Experience</h2>
    <p></p>
    <h3 class="sectionSubtitle">◍ Architectural Castings</h3>
    <p>Portland, OR</p>
    <p>Dec 2019 - Mar 2022</p>
    <p>
      ∘ Manufactured over 400 replica cast fiberglass reinforced concrete facade parts for historic
      buildings
    </p>
    <p>∘ Finished cast parts using epoxy and painted individual parts</p>
    <p>∘ Assembled, disassembled, and prepared molds for production</p>
    <p></p>
    <h3 class="sectionSubtitle">◍ Icicle Tricycles</h3>
    <p>Portland, OR</p>
    <p>Aug 2017 - Dec 2019</p>
    <p>
      ∘ Built over 100 custom-finished cedar and vinyl-wrapped boxes for advertising and vending
      cargo tricycles
    </p>
    <p>∘ Standardized procedures and implemented policies to ensure quality and efficiency</p>
    <p>∘ Organized work area to promote safety and productivity</p>

    <p></p>
    <h3 class="sectionSubtitle">◍ Rennert Bronze</h3>
    <p>Salt Lake City, UT</p>
    <p>Jul 2016 - Apr 2017</p>
    <p>
      ∘ Assisted artist with producing small and large-scale bronze sculptures using the lost wax
      method
    </p>
    <p>∘ Created silicon and plaster molds for large-scale pieces</p>
    <p>∘ Assembled bronze pieces using a welder and hand tools</p>
    <p>
      ∘ Completed patina, finish work, packaging, and delivery of finished sculptures, 3 of which
      are on public display in New York, NY
    </p>

    <p></p>
    <h3 class="sectionSubtitle">◍ E3 Fabrication</h3>
    <p>Salt Lake City, UT</p>
    <p>Apr 2015 - Apr 2017</p>
    <p>
      ∘ Set up and operated CNC machines, CNC router tables, and other tools in a custom metal,
      machine, and wood fabrication shop
    </p>
    <p>
      ∘ Ensured a high quality of finished products and verified mechanical tolerances were correct
    </p>
  </div>

  <!-- </div> -->
</template>
<script>
export default {}
</script>
<style scoped>
.resumeTitle {
  font-size: 3rem;
  font-style: italic;
}
.topTitle {
  display: flex;
  flex-direction: column;
  width: 100%;
  justify-content: center;
  align-items: center;
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
