<template>
  <div>
    <h1>{{brewery.name}}</h1>
    <brewery-profile v-bind:currentBrewery="brewery"></brewery-profile>
    <!-- <beer-list v-bind:currentBrewery="brewery"></beer-list> -->
  </div>
</template>

<script>
//import BreweryService from "@/services/BreweryService.js";
import BreweryProfile from "@/components/BreweryProfile.vue";
// import BeerList from "@/components/BeerList.vue";

export default {
  components: {
    BreweryProfile,
   // BeerList,
  },
  computed: {
    brewery() {
      return this.$store.state.breweries.find((brewery) => {
        return brewery.brewery_id == this.$route.params.brewery_id;
      });
    },
  },

  // created() {
  //   BreweryService.getBeersByBrewery(this.brewery.name).then((response) => {
  //     this.$store.commit("FILL_BEERS", response.data);
  //     this.beerList = this.$store.state.beers;
  //   });
  // },
};
</script>

<style>
</style>