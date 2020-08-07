<template>
  <div>
    <!--<router-link :to="{name : 'beerInfoView', params: {beer_id: beer.beer_id}}" v-for="beer in $store.state.beers" v-bind:key="beer.beer_id">{{beer.name}}</router-link>
    -->
    <h2> {{breweryName}}'s Beer List</h2>
    <beer v-for="currentBeer in getBeerList" :key="currentBeer.beer_name" v-bind:beer="currentBeer"></beer>
  </div>
</template>

<script>
import Beer from "@/components/Beer.vue"

export default {
    name: 'beer-list',
    data() {
        return {

        }
    },
    props: {
        breweryName: String
    }
    ,
    components: {
        Beer
    },
    computed: {
        getBeerList(){
            return this.$store.state.breweries.find((brewery) => {
                return brewery.name = this.breweryName;
            }).beerList;
        }
    }


}
</script>

<style>

</style>