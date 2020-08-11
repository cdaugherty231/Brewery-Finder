<template>
  <div class="main">
    <h1>{{brewery.name}}</h1>
    <brewery-profile v-bind:currentBrewery="brewery"></brewery-profile>
    <!--<beer-list v-bind:breweryName="brewery.name"></beer-list>-->
    <!--<beer-display v-for="currentBeers in allBeers" v-bind:key="currentBeers.beer_name" v-bind:beer="currentBeers"></beer-display>-->
    <!--<beer-display v-for="currentBeers in allBeers" v-bind:key="currentBeers.beer_name">{{currentBeers.beer_name}}</beer-display>-->
    <p class="listofbeer"><br><br>LIST OF BEER(S): <br></p>
    <beers v-for="currentBeers in allBeers" v-bind:key="currentBeers.beer_name">
      Beer Name: {{currentBeers.beer_name}}<br>
      Description: {{currentBeers.beer_description}}<br>
      Type: {{currentBeers.beer_type}}<br>
      ABV: {{currentBeers.abv}}<br>
      <br>
    </beers>
    
  </div>
</template>

<script>
import BreweryProfile from "@/components/BreweryProfile.vue";
//import BeerList from "@/components/BeerList.vue";
import BreweryService from '@/services/BreweryService';
//import BeerDisplay from '@/components/Beer';

export default {
  components: {
    BreweryProfile,
    /*BeerList,*/
  },
  computed: {
    brewery() {
      return this.$store.state.breweries.find((brewery) => {
        return brewery.brewery_id == this.$route.params.brewery_id;
      });
    },
  },

  data(){
    return{
      allBeers: []
    }
  },
  created(){
    //breweryService.getBeerProduct().then(response => this.allBeers = response.data);
    BreweryService.getBeersByBrewery(this.brewery.name).then(response => this.allBeers = response.data);
  }

};
</script>

<style scoped>
.main{
  color:white;
}
</style>