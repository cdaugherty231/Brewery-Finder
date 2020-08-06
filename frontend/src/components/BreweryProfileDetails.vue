<template>
  <brewery-profile-details v-bind:key="brewery.name"></brewery-profile-details>
</template>

<script>
import BreweryProfileDetails from "@/components/BreweryProfileDetails.vue"

export default {
    name: 'brewery-profile-details',
    components: {
        BreweryProfileDetails
    }
}
</script>

<style>

</style>