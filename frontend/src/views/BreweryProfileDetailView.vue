<template>

  <div>
    <h1>Brewery Profile</h1>
    <brewery-profile v-bind:currentBrewery="brewery"></brewery-profile>
    <beer-list v-bind:breweryName="brewery.name"></beer-list>
  </div>

</template>


<script>
import BreweryProfile from "@/components/BreweryProfile.vue";
import BeerList from "@/components/BeerList.vue";

export default {

  components: {
    BreweryProfile,
    BeerList,
  },

  computed: {
    brewery() {
      return this.$store.state.breweries.find((brewery) => {
        return brewery.brewery_id == this.$route.params.brewery_id;
      });
    },

  },



};

</script>

<style scoped>
.main{
  color:white;
}
</style>
