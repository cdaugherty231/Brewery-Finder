<template>
  <div>
    <b-row>
      <b-col></b-col>
      <b-col>
        <b-row>
          <h1 id="white-txt">Add New Beer to {{breweryName}}'s Beer List</h1>
        </b-row>
        <b-row>
          <b-form @submit="submitNewBeer" id="newBeerContainer">
            <b-form-group label-size="lg">
              <b-form-input
                id="input"
                type="text"
                name="beer_name"
                placeholder="New Beer Name"
                v-model="newBeer.beer_name"
                label-size="sm"
              ></b-form-input>

              <b-form-input
                id="input"
                type="text-area"
                rows="4"
                cols="30"
                name="beer_description"
                placeholder="Describe your new beer"
                v-model="newBeer.beer_description"
              ></b-form-input>

              <b-form-input
                id="input"
                type="text"
                name="abv"
                placeholder="Alchohol by Volume"
                v-model="newBeer.abv"
              ></b-form-input>

              <b-form-input
                id="input"
                type="text"
                name="beer_type"
                placeholder="Beer Type"
                v-model="newBeer.beer_type"
              ></b-form-input>

              <b-form-input
                id="input"
                type="text"
                name="beer_image"
                placeholder="Image Link"
                v-model="newBeer.beer_image"
              ></b-form-input>
              <b-card-text>
                <b-button type="submit" size="lg" variant="warning">Submit New Beer</b-button>
              </b-card-text>
            </b-form-group>
          </b-form>
        </b-row>
      </b-col>
      <b-col></b-col>
    </b-row>
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

<style scoped>
#input {
  margin: 20px;
}

#newBeerContainer {
  padding: 10px 0 50px 0;
}

.form-control {
  border-radius: 5px;
  font-size: 15px;
}

#white-txt {
  color: white;
  text-align: center;
  margin-top: 20px;
  margin-bottom: 0px;
  background-color: #29abe2;
  border-radius: 8px;
}

/* colors: 
yellow = #fcee21 
ornage = #fbb03b
blue = #29abe2*/
</style>