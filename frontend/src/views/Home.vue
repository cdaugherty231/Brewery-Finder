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
<style>



</style>

