<template>
  <b-container>
    <b-col>
      <b-row id="username">
        {{currentUser.username}}Username
      </b-row>
      <b-row>
        
      </b-row>
    </b-col>
    <b-col>
      <b-row>

      </b-row>
      <b-row>
      
      </b-row>
    </b-col>

  </b-container>
</template>

<script>
export default {
name: 'user-profile',
computed: {
  currentUser() {
    return this.$store.state.users.find((user) => {
      user.username == this.$route.params.username
    });
  }
}
}
</script>

<style scoped>
body {
  background: lightblue;
  font-family: "Noto Sans", sans-serif;
  background: url(C:/Users/Student/workspace/brewery-finder-capstone-java/frontend/src/img/brewery_artboard_color.jpg);
  /* background: url(C:/Users/Student/workspace/brewery-finder-capstone-java/frontend/src/img/brewery_artboard_color_gray.jpg); */
  /* background: url(C:/Users/Student/workspace/brewery-finder-capstone-java/frontend/src/img/brewery_artboard_color_gray2.jpg); */
  background-size: cover;
}

</style>

<!--this displays the info of the brewer and brewery that the brewer can see -->