<template>
  <div class="headerContainer">
    <a href="#top" class="clickable-div">
      <div class="left">
        <h2>JOEL RENNERT</h2>
        <h4>creative web developer</h4>
      </div>
    </a>
    <div class="center">
      <h2><a href="#projects">Projects</a></h2>
      <h2><a href="#design">Design</a></h2>
      <h2><a href="#creative">Creative</a></h2>
      <h2><a href="#experience">Experience</a></h2>
      <h2><a href="#info">Info</a></h2>
    </div>
    <div class="right">
      <a href="#contact" class="scroll-button">
        <button class="btn">Get in touch</button>
      </a>
    </div>
  </div>
</template>

<script>
export default {}
</script>

<style scoped>
.clickable-div a::after,
.scroll-button a::after {
  content: none;
}

a {
  position: relative;
  color: #f3e0c1;
  text-decoration: none;
  transition: color 0.3s ease-in-out;
}

a:hover {
  color: rgb(255, 255, 255);
}

.center h2 a::after {
  content: '';
  position: absolute;
  bottom: 0;
  left: 10%;
  width: 0;
  height: 2px;
  background-color: #f3e0c1;
  transition: width 0.3s ease-in-out, left 0.3s ease-in-out;
}

.center h2 a:hover::after {
  width: 100%;
  left: 0;
}

.center h2 a {
  position: relative;
  color: inherit;
  padding-bottom: 5px;
  text-decoration: none;
}

.center h2 a:hover {
  color: rgb(255, 255, 255);
}

.headerContainer {
  display: flex;
  justify-content: space-between;
  align-items: center;
  width: 100%;
  padding: 4px 20px;
  border-bottom-left-radius: 20px;
  border-bottom-right-radius: 20px;
  position: sticky;
  background-image: url('../assets/bluebg.png');
  background-size: cover;
  backdrop-filter: blur(2px);
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
  font-style: italic;
  color: #ffffff;
}

.left {
  cursor: pointer;
  display: flex;
  flex-direction: column;
  justify-content: left;
  align-items: left;
}

.center {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-grow: 2;
  gap: 40px;
  padding-right: 40px;
}

.center h2 {
  color: white;
  font-size: 1rem;
}

.right {
  display: flex;
  justify-content: flex-end;
  align-items: center;
}

.scroll-button {
  display: flex;
  justify-content: center;
  align-items: center;
  text-decoration: none;
}

.btn {
  background-color: #549dbfdc;
  color: #ffffff;
  padding: 5px 20px;
  border: none;
  border-radius: 30px;
  font-size: 16px;
  font-family: 'Poppins', sans-serif;
  font-weight: 400;
  cursor: pointer;
  transition: all 0.3s ease-in-out;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  font-style: italic;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
}

.btn:hover {
  background-color: #549dbf9c;
  box-shadow: 0 6px 10px rgba(0, 0, 0, 0.15);
}

.btn:active {
  background-color: #3a6787;
  transform: translateY(1px);
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

@media (max-width: 768px) {
  .headerContainer {
    flex-direction: column;
    align-items: center;
    padding: 10px;
  }

  .center {
    gap: 20px;
    padding-right: 0;
    justify-content: center;
  }

  .left, .right {
    flex: none;
    margin-bottom: 10px;
  }

  .btn {
    padding: 8px 24px;
    font-size: 14px;
  }

  .center h2 {
    font-size: 0.9rem;
  }
}
</style>