<template>
  <div>
    <div class="profile-image"></div>
    <div>
      <header class="brewery-name">{{ brewery.name }}</header>
      <p1 class="brewery-address">{{ brewery.address_street }}{{ brewery.address_city }}</p1>
      <p1 class="brewery-address">{{ brewery.address_state }}{{ brewery.address_zip }}</p1>
      <p1 class="brewery-phone">{{ brewery.phone_number }}</p1>
      <p2 class="history-bio">{{ history }}</p2>
    </div>
    <div></div>
  </div>
</template>

<script>
import BreweryService from "@/services/BreweryService.js"

export default {
    data() {
      return {
        brewery: {
          name: "",
          brewer_username: "",
          days_operation: "",
          hours_operation: "",
          address_street: "",
          address_city: "",
          address_state: "",
          address_zip: "",
          phone_number: "",
          history: ""
        },
        currentBrewery: [

        ], 
      };
},
    created() {
          BreweryService.getBreweryByName().then((response) => {
              this.currentBrewery = response.data
          });
      },
}
</script>

<style>
</style>