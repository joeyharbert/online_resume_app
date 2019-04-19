git<template>
  <div class="home">
    <h1>{{ message }}</h1>
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
    axios.get('test.json').then(response => {
      this.student = response.data;
      console.log(this.student);
    });
  },
  methods: {}
};
</script>