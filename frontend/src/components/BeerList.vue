<template>
  <div>
    <!--<router-link :to="{name : 'beerInfoView', params: {beer_id: beer.beer_id}}" v-for="beer in $store.state.beers" v-bind:key="beer.beer_id">{{beer.name}}</router-link>
    -->
    <beer v-for="currentBeer in beerList" :key="currentBeer.beer_name" v-bind:beer="currentBeer"></beer>
  </div>
</template>

<script>
import Beer from "@/components/Beer.vue"

export default {
    name: 'beer-list',
    data() {
        return {
            beerList: [],
        }
    },
    props: [
        "currentBrewery"
    ],
    components: {
        Beer,
    },


}
</script>

<style>

</style>