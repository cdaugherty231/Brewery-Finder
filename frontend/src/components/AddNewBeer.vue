<template>
  <div class="main container">
    <h1 class="white-text">Add New Beer to {{breweryName}}'s Beer List</h1>

    <form class="form-control">
      <li class="register-box">
        <input type="text" name="beer_name" placeholder="New Beer Name" v-model="newBeer.beer_name" />
      </li>
      <li class="register-box">
        <input
          type="text-area"
          rows="4"
          cols="30"
          name="beer_description"
          placeholder="Describe your new beer"
          v-model="newBeer.beer_description"
        />
      </li>
      <li class="register-box">
        <input type="text" name="abv" placeholder="Alchohol by Volume" v-model="newBeer.abv" />
      </li>
      <li class="register-box">
        <input type="text" name="beer_type" placeholder="Beer Type" v-model="newBeer.beer_type" />
      </li>
      <li class="register-box">
        <input type="text" name="beer_image" placeholder="Image Link" v-model="newBeer.beer_image" />
      </li>

      <button class="btn" type="submit" v-on:click.prevent="submitNewBeer()">Submit New Beer</button>
    </form>
  </div>
</template>

<script>
import BreweryService from "@/services/BreweryService.js";

export default {
  name: "add-new-beer",
  data() {
    return {
      newBeer: {
        beer_name: "",
        is_active: Boolean,
        beer_description: "",
        abv: "",
        beer_type: "",
        beer_image: "",
        isactive: true,
      },
    };
  },

  methods: {
    submitNewBeer() {
      BreweryService.addNewBeer(this.newBeer, this.breweryName).then(
        (response) => {
          if (response.status == 200) {
            this.refresh_data();
            this.$router.push({ name: "home" });
          }
        }
      );
    },

    refresh_data() {
      // API call to get populate breweries list
      BreweryService.getAllBreweries().then((response) => {
        this.$store.commit("FILL_BREWERIES", response.data);

        // second api call to populate each breweries beer list
        this.$store.state.breweries.forEach((element) => {
          BreweryService.getBeersByBrewery(element.name).then((response2) => {
            //console.log(element.name + ": " + response2.data);
            element.beerList = response2.data;
            //this.$store.commit("FILL_BEERS", element, "test");
          });
        });
      });
    },
  },

  computed: {
    breweryName() {
      return this.$store.state.breweries.find((brewery) => {
        return brewery.brewery_id == this.$route.params.brewery_id;
      }).name;
    },
  },
};
</script>

<style>
</style>