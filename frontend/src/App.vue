<template>
  <div id="app">
    <div id="nav" v-if="$store.state.token != ''">
      <router-link v-bind:to="{ name: 'home' }" v-if="$store.state.token != ''">Home</router-link>&nbsp;|&nbsp; 
      <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
    </div>
    <router-view />
  </div>
</template>

<script>
import BreweryService from "@/services/BreweryService.js";

export default {
    created() {
    // API call to get populate breweries list
    BreweryService.getAllBreweries().then((response) => {
      this.$store.commit("FILL_BREWERIES", response.data);


      // second api call to populate each breweries beer list
      this.$store.state.breweries.forEach(element => {
        BreweryService.getBeersByBrewery(element.name).then((response2) => {
          //console.log(element.name + ": " + response2.data);
          element.beerList = response2.data;
          //this.$store.commit("FILL_BEERS", element, "test");
        })

      });
    })
  },
}
</script>
<style>

#app {
  background: lightblue; 
  font-family: 'Noto Sans', sans-serif;
  /*background: url(https://igmcreativegroup.com/wp-content/uploads/2018/06/AdobeStock_104201889.jpeg) no-repeat center center fixed;*/
  /*background: url(https://c4.wallpaperflare.com/wallpaper/903/861/209/beer-drink-alcohol-wallpaper-preview.jpg) no-repeat center center fixed;*/
  /*background: url(https://c4.wallpaperflare.com/wallpaper/578/470/326/beer-splashes-alcohol-drinking-glass-wallpaper-preview.jpg) no-repeat center center fixed;*/
  background: url(https://c4.wallpaperflare.com/wallpaper/97/512/27/a-glass-of-beer-wallpaper-preview.jpg) no-repeat center center fixed;
  /*background: url(https://c4.wallpaperflare.com/wallpaper/240/999/697/futurama-cartoon-bender-the-simpsons-wallpaper-preview.jpg) no-repeat center center fixed;*/
  /*background: url(https://www.wvxu.org/sites/wvxu/files/201409/Beer.JPG) no-repeat center center fixed;*/
  background-size: cover;
  height: 100vh;
  width: 100vw;
  
}

</style>
