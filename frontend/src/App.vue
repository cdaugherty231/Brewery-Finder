<template>
  <div id="app">
    <div id="nav">
      <router-link v-bind:to="{ name: 'home' }">Home</router-link>&nbsp;|&nbsp;
      <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
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
          this.$store.commit("FILL_BEERS", element, response2.data);
        })

      });
    })
  },
}
</script>
