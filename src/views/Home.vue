<template>
  <div class="home">
    <div class="header">
      <p>Online-Resume</p>
    </div>


    <div class="contact">
      <div>
        <img :src="student.photo">
      </div>
      <div class="info">
        <h3>Hello! I'm {{ student.first_name }} {{ student.last_name }}</h3>
        <p>Phone: {{ student.phone_number }}</p>
        <p>Email: {{ student.email }}</p>
        <p><a :href="student.website">My Website</a></p>
        <p><a href="/">Online Resume</a></p>
        <p>Twitter: </p>
        <a class="twitter-timeline" data-width="220" data-height="450" data-theme="dark" :href="'https://twitter.com/'+  student.twitter + '?ref_src=twsrc%5Etfw'">Tweets by {{ student.first_name }} {{ student.last_name }}</a>
      </div>
    </div>

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
import axios from "axios";
export default {
  data: function() {
    return {
      message: "Welcome to Vue.js!",
      student: {},
      twitter: "joeyharbert"
    };
  },
  created: function() {
    axios.get('/api/students/' + this.$route.params.id).then(response => {
      this.student = response.data;
      console.log(this.student);
    });
  },
  methods: {}
};
</script>