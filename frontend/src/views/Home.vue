<template>
  <div class="home">
    <h1></h1>
    <div class="Admin" v-if="$store.state.user.authorities.find(auth => auth.name == 'ROLE_ADMIN')">
      <add-new-brewery></add-new-brewery>
      <brewery-list></brewery-list>
      
    </div>

    <div
      class="Brewer"
      v-if="$store.state.user.authorities.find(auth => auth.name == 'ROLE_BREWER')">
      <!--<brewery-update></brewery-update> Tien's Change-->
      <brewery-list></brewery-list>
    </div>
    <div
      class="Beer-Lover"
      v-if="$store.state.user.authorities.find(auth => auth.name == 'ROLE_USER')">
      <brewery-list></brewery-list>
    </div>
  </div>
</template>

<script>
import AddNewBrewery from "@/components/AddNewBrewery.vue";
import BreweryList from "@/components/BreweryList.vue";
//import BreweryUpdate from "@/components/BreweryUpdate.vue";

export default {
  name: "home",
  data() {
    return {
      user: this.$store.state.user,
    };
  },
  components: {
    AddNewBrewery,
    BreweryList,
    //BreweryUpdate
  },
};
</script>
<style scope>
.home {
  background-color: lightblue; 
  font-family: 'Noto Sans', sans-serif; 
  background:  linear-gradient(
      rgba(255, 216, 155, 0.40), 
      rgba(25, 84, 123, 0.80)
    ), url(https://www.wvxu.org/sites/wvxu/files/201409/Beer.JPG) no-repeat center center fixed;
  background-size: 100% 100%;
  height: 100%;
  width: 100%;
}


</style>

