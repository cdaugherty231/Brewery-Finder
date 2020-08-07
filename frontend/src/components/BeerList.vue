<template>
  <div>
    <!--<router-link :to="{name : 'beerInfoView', params: {beer_id: beer.beer_id}}" v-for="beer in $store.state.beers" v-bind:key="beer.beer_id">{{beer.name}}</router-link>
    -->
    <beer v-for="beer in beerList" :key="beer.beer_name"></beer>
  </div>
</template>

<script>
import BreweryService from "@/services/BreweryService.js"
import Beer from "@/components/Beer.vue"

export default {
    name: 'beer-list',
    data() {
        return {
            beerList: [],
        }
    },
    props: [
        "brewery"
    ],
    components: {
        Beer,
    },
    created() {
        BreweryService.getBeersByBrewery(this.brewery.name).then((response) => {
            this.$store.commit("FILL_BEERS", response.data);
            this.beerList = this.$store.state.beers;
        });
    }

}
</script>

<style>

</style>