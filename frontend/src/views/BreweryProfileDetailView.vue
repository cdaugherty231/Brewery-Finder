<template>

  <div>
    <h1>Brewery Profile</h1>

    <div v-if="$store.state.user.authorities.find(auth => auth.name == 'ROLE_ADMIN') 
      || $store.state.user.username == brewery.brewer_username">
      <h3>CURRENT USER IS AN ADMIN OR BREWER</h3>
      <router-link :to="{name: 'addNewBeer',
                         params: {breweryName: brewery.name}}">Add New Beer</router-link>
      <router-link :to="{name: 'updateBrewery',
                         params: {brewery_id: brewery.brewery_id}}">Update Brewery Info</router-link>
    </div>


    
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
