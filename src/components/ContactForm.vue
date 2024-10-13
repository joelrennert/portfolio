<template>
  <div class="form-container">
    <form @submit="CREATEAFUNCTION" method="POST" class="contact-form">
      <div class="form-group">
        <input type="text" placeholder="This form" name="name" required class="form-input" />
      </div>

      <div class="form-group">
        <input type="email" placeholder="is currently " name="email" required class="form-input" />
      </div>

      <div class="form-group">
        <textarea
          placeholder="out of order"
          name="message"
          required
          class="form-textarea"
        ></textarea>
      </div>

      <div class="form-group">
        <button type="submit" class="form-button">Send a message</button>
      </div>
    </form>
  </div>
</template>

<script>
export default {}
</script>

<style scoped>
/* Form container */
.form-container {
  display: flex;
  justify-content: flex-start;
  align-items: center;
  /* padding: 20px; */
}

/* Form styling */
.contact-form {
  background: #ffffff00;
  /* padding: 20px; */
  border-radius: 12px;
  max-width: 600px;
  width: 100%;
}

/* Form group */
.form-group {
  margin-bottom: 15px;
}

/* Form input */
.form-input {
  width: 100%;
  padding: 10px;
  border: 1px solid #ddd;
  border-radius: 12px;
  box-sizing: border-box;
  font-size: 16px;
  font-family: 'IBM Plex Mono';
  font-style: italic;
  transition: border-color 0.3s ease;
}

.form-input:focus {
  /* border-color: #0056b3; */
  outline: none;
}

/* Form textarea */
.form-textarea {
  width: 100%;
  padding: 10px;
  border: 1px solid #ddd;
  border-radius: 12px;
  box-sizing: border-box;
  font-size: 16px;
  transition: border-color 0.3s ease;
  font-family: 'IBM Plex Mono';
  font-style: italic;
  resize: vertical; /* Allow vertical resizing only */
}

.form-textarea:focus {
  /* border-color: #0056b3; */
  outline: none;
}

/* Form button */
.form-button {
  background-color: #549dbfdc;
  color: #ffffff;
  padding: 10px 15px;
  border: none;
  border-radius: 4px;
  font-size: 16px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.form-button:hover {
  background-color: #549dbf;
}
</style>
<!-- 
<template>
  <div class="form-container">
    <form @submit="CREATEAFUNCTION" method="POST" class="contact-form">
      <div class="form-group">
        <input type="text" placeholder="This" name="name" required class="form-input" />
      </div>

      <div class="form-group">
        <input type="email" placeholder="form " name="email" required class="form-input" />
      </div>

      <div class="form-group">
        <textarea
          placeholder="doesnt work atm ;)"
          name="message"
          required
          class="form-textarea"
        ></textarea>
      </div>

      <div class="form-group">
        <button type="submit" class="form-button">Send a message</button>
      </div>
    </form>
  </div>
</template>

<script>
export default {}
</script>

<style scoped>
/* Form container */
.form-container {
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 20px;
}

/* Form styling */
.contact-form {
  /* background: #373532dc; */
  padding: 20px;
  border-radius: 12px;
  /* box-shadow:
    8px 8px 16px #2e2d2b,
    -8px -8px 16px #3e3c3a; */
  max-width: 600px;
  width: 100%;
}

/* Form group */
.form-group {
  margin-bottom: 15px;
}

/* Form input */
.form-input {
  width: 100%;
  padding: 10px;
  border: none;
  border-radius: 12px;
  box-sizing: border-box;
  font-size: 16px;
  /* background: #373532dc;
  box-shadow:
    inset 8px 8px 16px #2e2d2b,
    inset -8px -8px 16px #3e3c3a; */
  color: #333;
  transition: box-shadow 0.3s ease;
}

.form-input:focus {
  outline: none;
 
}

/* Form textarea */
.form-textarea {
  width: 100%;
  padding: 10px;
  border: none;
  border-radius: 12px;
  box-sizing: border-box;
  font-size: 16px;
  background: #373532dc;
background-color: #f3e0c1;
  color: #f3e0c1;
  transition: box-shadow 0.3s ease;
  resize: vertical;
}

.form-textarea:focus {
  outline: none;

}

/* Form button */
.form-button {
  background-color: #4e9974e7;
  color: #ffffff;
  padding: 10px 15px;
  border: none;
  border-radius: 12px;
  font-size: 16px;
  cursor: pointer;
  /* box-shadow:
    8px 8px 16px #2e2d2b,
    -8px -8px 16px #3e3c3a; */
  transition:
    background-color 0.3s ease,
    box-shadow 0.3s ease;
}

.form-button:hover {
  background-color: #3c785ae7;
  /* box-shadow:
    8px 8px 16px #2e2d2b,
    -8px -8px 16px #3e3c3a,
    0 0 0 2px #ffffff; */
}
</style> -->
