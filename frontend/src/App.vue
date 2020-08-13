<template>
  <div id="app">
    <div>
  <b-navbar toggleable="lg" type="dark" variant="warning">
    <b-navbar-brand href="/"> <img src="C:/Users/Student/workspace/brewery-finder-capstone-java/frontend/src/img/OhioBeer14.png" width="10" height="10" class="d-inline-block align-top" alt=""> Beer Finder</b-navbar-brand>

      <!-- Right aligned nav items -->
      <b-navbar-nav class="ml-auto">
          <b-dropdown-item href="userProfile">Profile</b-dropdown-item>
          <b-dropdown-item href="logout">Logout</b-dropdown-item>
      </b-navbar-nav>
  </b-navbar>
</div>
    <!-- <div id="nav" v-if="$store.state.token != ''">
      <router-link v-bind:to="{ name: 'home' }" v-if="$store.state.token != ''">Home</router-link>&nbsp;|&nbsp; 
      <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
    </div> -->
    <router-view />
  </div>
</template>

<script>
import BreweryService from "@/services/BreweryService.js";

export default {
    created() {
    // API call to get populate breweries list
    BreweryService.getAllBreweries().then((response) => {
      this.$store.commit("FILL_BREWERIES", response.data);


      // second api call to populate each breweries beer list
      this.$store.state.breweries.forEach(element => {
        BreweryService.getBeersByBrewery(element.name).then((response2) => {
          //console.log(element.name + ": " + response2.data);
          element.beerList = response2.data;
          //this.$store.commit("FILL_BEERS", element, "test");
        })

      });
    })
  },
}
</script>
<style>

  b-dropdown-item {
    padding: 0 20px 0 0;
    font-family: Arial, Helvetica, sans-serif;
    font-size: 20px;
  }

/* colors: 
yellow = #fcee21 
ornage = #fbb03b
blue = #29abe2*/

</style>
