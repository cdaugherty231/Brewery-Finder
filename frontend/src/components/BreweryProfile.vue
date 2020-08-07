<template>
  <div>
    <h1>brewery profile</h1>
    <div class="profile-image"></div>
    <div>

      <header class="brewery-name">{{ currentBrewery.name }}</header>
      <p class="brewery-address">{{ currentBrewery.address_street }} {{ currentBrewery.address_city }}</p>
      <p class="brewery-address">{{ currentBrewery.address_state }} {{ currentBrewery.address_zip }}</p>
      <p class="brewery-phone">{{ currentBrewery.phone_number }}</p>
      <p class="history-bio">{{ currentBrewery.history }}</p> 
    </div>
    <div></div>
  </div>
</template>

<script>


export default {
  name: 'brewery-profile',
  data() {
    return {

    };
  },
  props: {
    currentBrewery: {}
  }

};
</script>

<style>
</style>