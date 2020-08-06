<template>
  <div>
    <h1>{{brewery.name}}</h1>
    <brewery-profile v-bind:brewery="brewery"></brewery-profile>
  </div>
</template>

<script>
import BreweryProfile from "@/components/BreweryProfile.vue"

export default {
  components: {
    BreweryProfile
  },
  computed: {
    brewery() {
     return this.$store.state.breweries.find((brewery) => {
        return brewery.brewery_id == this.$route.params.brewery_id;
      })
    }

  }

};
</script>

<style>
</style>