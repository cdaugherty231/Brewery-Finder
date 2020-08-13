<template>
  <div id="beer-card-list">
    <h2> <span id="brewery-ttl"> {{breweryName}}'s Beer List</span></h2>
    <!-- <img src="@/img/001rhinegeisttruth.jpg"> -->
    <b-card-group columns>
    <beer v-for="currentBeer in getBeerList" :key="currentBeer.beer_name" v-bind:beer="currentBeer"></beer>
    </b-card-group>
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
                return brewery.name == this.breweryName;
            }).beerList;
        }
    }
}
</script>

<style scoped>

#brewery-ttl {
 padding: 10px;
 font-weight:bolder;
 background-color: #fbb03b;
 border-radius: 10px;
}

h2 {
    margin-bottom: 40px;
}

#beer-card-list {
    padding: 0 100px 0 100px
}


</style>