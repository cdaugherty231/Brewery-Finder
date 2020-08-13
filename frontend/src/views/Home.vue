<template>
  <div class="home">
    <b-container fluid>
      <div
        class="Admin"
        v-if="$store.state.user.authorities.find(auth => auth.name == 'ROLE_ADMIN')"
      >
        <b-col>
          <add-new-brewery></add-new-brewery>
          <brewery-list></brewery-list>
        </b-col>
      </div>
    </b-container>

    <b-container class="bv-brewer-home" fluid>
      <div
        class="Brewer"
        v-if="$store.state.user.authorities.find(auth => auth.name == 'ROLE_BREWER')"
      >
        <b-row align-h="center">
          <b-col align-self="start" col lg="2">
            <b-card
              footer="Brewery of the Month"
              title="Braxton"
              img-src="http://www.braxtonbrewing.com/wp-content/uploads/2019/07/Rooftop-Hero-Image-Living-Wall-1-2280x1520.jpg"
              img-alt="Image"
              img-top
              tag="article"
              style="max-width: 20rem;"
              class="mb-2"
            >
              <b-card-text>Nested in historic Covington, enjoy a refreshing beer at one of the best rooftop patios.</b-card-text>
            </b-card>
          </b-col>
          <b-col cols="12" md="auto">
            <brewery-list></brewery-list>
          </b-col>
          <b-col align-self="end" col lg="2">
            <b-card
              header="Featured Beer"
              title="Haven"
              img-src="https://i.pinimg.com/564x/f4/aa/85/f4aa8513c8ace0b71784d970bea87cd5.jpg"
              img-alt="Image"
              img-bottom
              tag="article"
              style="max-width: 20rem;"
              class="mb-2"
            >
              <b-card-text>A medium bodied, full flavored and easy drinking wheat.</b-card-text>
            </b-card>
          </b-col>
        </b-row>
      </div>
    </b-container>

    <div
      class="Beer-Lover"
      v-if="$store.state.user.authorities.find(auth => auth.name == 'ROLE_USER')"
    >
      <b-row align-h="center">
        <b-col align-self="start" col lg="2">
          <b-card
            footer="Brewery of the Month"
            title="Braxton"
            img-src="http://www.braxtonbrewing.com/wp-content/uploads/2019/07/Rooftop-Hero-Image-Living-Wall-1-2280x1520.jpg"
            img-alt="Image"
            img-top
            tag="article"
            style="max-width: 20rem;"
            class="mb-2"
          >
            <b-card-text>Nested in historic Covington, enjoy a refreshing beer at one of the best rooftop patios.</b-card-text>
          </b-card>
        </b-col>
        <b-col cols="12" md="auto">
          <brewery-list></brewery-list>
        </b-col>

        <b-col align-self="end" col lg="2">
          <b-card
            header="Featured Beer"
            title="Haven"
            img-src="https://i.pinimg.com/564x/f4/aa/85/f4aa8513c8ace0b71784d970bea87cd5.jpg"
            img-alt="Image"
            img-bottom
            tag="article"
            style="max-width: 20rem;"
            class="mb-2"
          >
            <b-card-text>A medium bodied, full flavored and easy drinking wheat.</b-card-text>
          </b-card>
        </b-col>
      </b-row>
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
<style scoped>
.Admin-add-brewery-card {
  background-color: lightblue;
}

.home {
  font-family: "Noto Sans", sans-serif;
  background: linear-gradient(rgba(255, 216, 155, 0.4), rgba(25, 84, 123, 0.8)),
    url(https://www.wvxu.org/sites/wvxu/files/201409/Beer.JPG) no-repeat center
      center fixed;
  background-size: 100% 100%;
  position: absolute;
  height: 200%; /* Makes background full size per page- do not touch!!!!*/
  width: 100%;
}
</style>

