<template>
  <div>
    <h2> {{breweryName}}'s Beer List</h2>
    <!-- <img src="@/img/001rhinegeisttruth.jpg"> -->
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

<style scoped>

</style>