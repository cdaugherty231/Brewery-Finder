<template>
  <div id="app">
    <div>
  <b-navbar id="navbar" toggleable="lg" type="dark" variant="warning">
    <b-img id="beerImg" src="./img/OhioBeer14.png" fluid></b-img>
    <b-navbar-brand href="/">OHIO BREWERY FINDER</b-navbar-brand>

      <!-- Right aligned nav items -->
      <b-navbar-nav class="ml-auto">
          <b-dropdown-item href="about">Developers</b-dropdown-item>
          <b-dropdown-item href="logout">Logout</b-dropdown-item>
      </b-navbar-nav>
  </b-navbar>

</div>
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

#beerImg {
  padding: 0 2% 0 1%;
  height: 80px;
}

#navbar {
  height: 100px;
}

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
