<template>
  <div class="home">
    <h1>Home</h1>
    <div class="Admin" v-if="$store.state.user.authorities.find(auth => auth.name == 'ROLE_ADMIN')">
     
      <add-new-brewery></add-new-brewery>
    </div>

     <div class="Brewer" v-if="$store.state.user.authorities.find(auth => auth.name == 'ROLE_BREWER')">
      <brewery-list></brewery-list>
    </div>
    <div class="Beer-Lover" v-if="$store.state.user.authorities.find(auth => auth.name == 'ROLE_BEER_LOVER')">
    </div>

  </div>
</template>

<script>
import AddNewBrewery from "@/components/AddNewBrewery.vue";
import BreweryList from "@/components/BreweryList.vue";

export default {
  name: "home",
  data() {
    return {
      user: this.$store.state.user,
    };
  },
  components: {
    AddNewBrewery,
    BreweryList
  },
};
</script>
