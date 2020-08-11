<template>

  <div class="main">

    <h1>{{brewery.name}}</h1>

    <brewery-profile v-bind:currentBrewery="brewery"></brewery-profile>

    <!--<beer-list v-bind:breweryName="brewery.name"></beer-list>-->

    <!--<beer-display v-for="currentBeers in allBeers" v-bind:key="currentBeers.beer_name" v-bind:beer="currentBeers"></beer-display>-->

    <!--<beer-display v-for="currentBeers in allBeers" v-bind:key="currentBeers.beer_name">{{currentBeers.beer_name}}</beer-display>-->

    <p class="listofbeer"><br><br>LIST OF BEER(S): <br></p>

    <beer v-for="currentBeers in allBeers" v-bind:key="currentBeers.beer_name">

      

      Beer Name: {{currentBeers.beer_name}} 

      <router-link
      :to="{name: 'EditBeer', params: {messageId: currentBeers.beer_id}}" tag="button" class="btnEditBeer">Edit</router-link><br> 

      Description: {{currentBeers.beer_description}}<br>

      Type: {{currentBeers.beer_type}}<br>

      ABV: {{currentBeers.abv}}<br>

      <br>

    </beer>

    

  </div>

</template>


<script>

import BreweryProfile from "@/components/BreweryProfile.vue";
//import BeerList from "@/components/BeerList.vue";
import breweryService from '@/services/BreweryService.js';
import Beer from '@/components/Beer.vue';


/*export default {

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



};*/


export default {

  components: {

    BreweryProfile,

    Beer

  },

  data(){

    return{

      allBeers: []

    }

  },

  computed: {

    brewery() {

      return this.$store.state.breweries.find((brewery) => {

        return brewery.brewery_id == this.$route.params.brewery_id;

      });

    },

  },

  created(){

    //breweryService.getBeerProduct().then(response => this.allBeers = response.data);

    breweryService.getBeersByBrewery(this.brewery.name).then(response => this.allBeers = response.data);

  }


};

</script>


<style>

.main{

  color:white;

}

</style>
