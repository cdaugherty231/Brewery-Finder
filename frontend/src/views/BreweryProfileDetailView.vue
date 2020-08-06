<template>
  <div>
    <h1>{{brewery.name}}</h1>
    <brewery-profile v-bind:brewery="brewery"></brewery-profile>
    <!--<beer-list></beer-list>-->
  </div>
</template>

<script>
import BreweryProfile from "@/components/BreweryProfile.vue"
/*import BeerList from "@/components/BeerList.vue"8*/

export default {
  components: {
    BreweryProfile,
    /*BeerList*/
  },
  computed: {
    brewery() {
     return this.$store.state.breweries.find((brewery) => {
        return brewery.brewery_id == this.$route.params.brewery_id;
      })
    }

  }

};
</script>

<style>
</style>