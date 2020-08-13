<template>
  <div>
    <div
      v-if="$store.state.user.authorities.find(auth => auth.name == 'ROLE_ADMIN') 
      || $store.state.user.username == displayedBrewery.brewer_username"
    >

    <brewery-profile v-bind:currentBrewery="displayedBrewery"></brewery-profile>
    <b-row id="buttons">
      <b-button id="addBeer" variant="light">
        <router-link
          :to="{name: 'addNewBeer', params: {brewery_id: displayedBrewery.brewery_id}}"
        >Add New Beer</router-link>
      </b-button>
      <b-button id="updateBrwry" variant="light">
        <router-link
          :to="{name: 'updateBrewery', params: {brewery_id: displayedBrewery.brewery_id}}"
        >Update Brewery Info</router-link>
      </b-button>
    </b-row>
    <beer-list v-bind:breweryName="displayedBrewery.name"></beer-list>
    </div>
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
    displayedBrewery() {
      return this.$store.state.breweries.find((brewery) => {
        return brewery.brewery_id == this.$route.params.brewery_id;
      });
    },
  },
};
</script>

<style scoped>

#addBeer {
margin: 0 20px 50px 115px;
padding: 15px;
color: #29abe2;
font-family: Arial, Helvetica, sans-serif;
font-weight: bolder;
}

#updateBrwry {
  margin: 0 20px 50px 0;
  padding: 15px;
  font-family: Arial, Helvetica, sans-serif;
  font-weight: bolder;
}

.main {
  color: white;
}

/* colors: 
yellow = #fcee21 
ornage = #fbb03b
blue = #29abe2*/
</style>
