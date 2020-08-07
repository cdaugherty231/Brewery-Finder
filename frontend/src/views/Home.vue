<template>
  <div class="home">
    <h1>Home</h1>
    <div class="Admin" v-if="$store.state.user.authorities.find(auth => auth.name == 'ROLE_ADMIN')">
      <brewery-list></brewery-list>
      <add-new-brewery></add-new-brewery>
    </div>

    <div
      class="Brewer"
      v-if="$store.state.user.authorities.find(auth => auth.name == 'ROLE_BREWER')"
    ></div>
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
  },
};
</script>

