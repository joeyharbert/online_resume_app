<template>
  <div class="home">
    <h1>{{ message }}</h1>

    <div class="header">
    <p>Online-Resume</p>
    </div>

    <div class="image">
      <h3>Hello! I'm {{ student.first_name }} {{ student.last_name }}</h3>
      <p>Phone: {{ student.phone_number }}</p>
      <p>Email: {{ student.email }}</p>
      <p>Twitter: </p>
    </div>

    <div></div> 

    <div class="body">
      <h4>A Little Bit About Me</h4>
      {{ student.short_bio }}
    </div>

    <div class="body">
      <h4>Professional Experiences</h4>
      <div class="experience" v-for="experience in student.experiences">
        <h5>{{ experience.job_title }} |
      {{ experience.company_name }} |
      {{ experience.start_date }} – {{ experience.end_date }}</h5>
      <p>{{ experience.details }}</p>
      </div>
    </div>

    <div class="body">
      <h4>Education and Skills</h4>
      <div class="education" v-for="education in student.education">
        <h5>{{ education.degree }} |
        {{ education.university }} |
        {{ education.start_date }} - {{ education.end_date }}</h5>
        <p>{{ education.details }}</p>
      </div>
    </div>
  </div>
</template>

<style>
</style>

<script>
export default {
  data: function() {
    return {
      message: "Welcome to Vue.js!",
      student: {}
    };
  },
  created: function() {
    axios.get('/api/test').then(response => {
      this.student = response.data;
      console.log(this.student);
    });
  },
  methods: {}
};
</script>