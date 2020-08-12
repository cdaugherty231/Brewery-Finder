<template>
  <div class="home">
    <b-container class="bv-admin-home" fluid>
      <div
        class="Admin"
        v-if="$store.state.user.authorities.find(auth => auth.name == 'ROLE_ADMIN')"
        >
<<<<<<< HEAD
              <brewery-list></brewery-list>
              <add-new-brewery></add-new-brewery>
=======
        <b-row align-v="center" align-h="start">
          <b-col> <brewery-list></brewery-list> </b-col>
          <b-col><add-new-brewery></add-new-brewery></b-col>
        </b-row>
>>>>>>> 299952539c81c92b3185fe5b03aa2433e7ad6895
      </div>
      </b-container>
    
    <b-container class="bv-brewer-home" fluid= "xl">
    <div
      class="Brewer"
      v-if="$store.state.user.authorities.find(auth => auth.name == 'ROLE_BREWER')">
      <!--<brewery-update></brewery-update> Tien's Change-->
      <brewery-list></brewery-list>
    </div>
    </b-container>

    <div
      class="Beer-Lover"
      v-if="$store.state.user.authorities.find(auth => auth.name == 'ROLE_USER')"
    >
      <brewery-list></brewery-list>
    </div>
  </div>
</template>

<script scoped>
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
<<<<<<< HEAD
<style scoped>
.Admin-add-brewery-card {
  background-color: lightblue;
}
=======
<style>
>>>>>>> 299952539c81c92b3185fe5b03aa2433e7ad6895

.home {
  font-family: "Noto Sans", sans-serif;
  background: linear-gradient(rgba(255, 216, 155, 0.4), rgba(25, 84, 123, 0.8)),
    url(https://www.wvxu.org/sites/wvxu/files/201409/Beer.JPG) no-repeat center
      center fixed;
  background-size: 100% 100%;
  position: absolute;
  height: 100vh; /* Makes background full size per page- do not touch!!!!*/
  width: 100%; 
}
</style>

