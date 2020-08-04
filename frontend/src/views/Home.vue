<template>
  <div class="home">
    <h1>Home</h1>
    <div class="Admin" v-if="$store.state.user.authorities.find(auth => auth.name == 'ROLE_ADMIN')">
      <admin-look-up-user></admin-look-up-user>
      <add-new-brewery></add-new-brewery>
    </div>

     <div class="Brewer" v-if="$store.state.user.authorities.find(auth => auth.name == 'ROLE_BREWER')">
    </div>
    <div class="Beer-Lover" v-if="$store.state.user.authorities.find(auth => auth.name == 'ROLE_BEER_LOVER')">
    </div>

  </div>
</template>

<script>
import AdminLookUpUser from "@/components/AdminLookUpUser.vue";
import AddNewBrewery from "@/components/AddNewBrewery.vue";

export default {
  name: "home",
  data() {
    return {
      user: this.$store.state.user,
    };
  },
  components: {
    AdminLookUpUser,
    AddNewBrewery
  },
};
</script>
