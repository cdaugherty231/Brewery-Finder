<template>
  <div id="brewery-prfl">
    <h1 class="brewery-name">{{ currentBrewery.name }}</h1>
    <div class="profile-image"></div>
    <div>
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
  },

};
</script>

<style scoped>

.history-bio {
  background-color: rgba(255, 255, 255, 0.753);
  margin-top: 30px;
  padding: 10px 0 100px 0;
  padding-left: 20px;
}

.brewery-name {
  font-family: Arial, Helvetica, sans-serif;
  font-size: 60px;
  padding: 0px 0 20px 0;
}

.brewery-address {
  font-size: 20px;
  padding-left: 20px;
}

.brewery-phone {
  border-radius: 8px;
  background-color: #fbb03b;
  margin-right: 1110px;
  font-size: 30px;
  padding-left: 20px;
}

#brewery-prfl {
  border-radius: 10px;
  padding: 50px;
  margin: 70px;
  background-color: #29aae2d5;
  border-radius: 10px;
}

/* colors: 
yellow = #fcee21 
ornage = #fbb03b
blue = #29abe2
*/
</style>