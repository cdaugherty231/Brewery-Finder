<template>
  <div>
    <!--<router-link :to="{name : 'beerInfoView', params: {beer_id: beer.beer_id}}" v-for="beer in $store.state.beers" v-bind:key="beer.beer_id">{{beer.name}}</router-link>
    -->
    <beer></beer>
  </div>
</template>

<script>
import BreweryService from "@/services/BreweryService.js"
import Beer from "@/components/Beer.vue"

export default {
    name: 'beer-list',
    props: {
        breweries: {}
    },
    components: {
        Beer,
        BreweryService
    },
    created() {
        BreweryService.getAllBeers(this.breweries.name).then((response) =>{
            this.$store.commit("FILL_BEERS", respone.data)
        })
    }

}
</script>

<style>

</style>