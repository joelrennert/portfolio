<template>
  <div>
    <div class="firstRow">
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
    </div>
  </div>
</template>

<style scoped>
.firstRow {
  display: flex;
  justify-content: flex-start;
  align-items: stretch;
  align-content: stretch;
  width: 100%;
  gap: 20px;
  padding: 25px;
  margin-bottom: 20px;
  border-radius: 20px;
}

.resumeSection {
  display: flex;
  flex-direction: column;
  flex-grow: 1;
  /* background-color: #76716adc; */
  border-radius: 16px;
  padding: 15px;
  height: 100%; /* Ensure the section takes full height */
  overflow-y: auto; /* Make this section scrollable */
  gap: 10px;
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