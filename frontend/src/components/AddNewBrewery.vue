<template>
  <b-container>
    <b-form @submit="submitUpdatedBrewery" class="newBreweryContainer">
     <h1 class="new-brewery-title">Add New Brewery</h1>
      <b-row>
        <b-col>
          <b-form-group
            label-size="sm"
            id="breweryNameLabel"
            label-for="breweryName"
          >
            <b-form-input
              id="breweryName"
              v-model="brewery.name"
              required
              placeholder="Brewery Name"
            ></b-form-input>
          </b-form-group>
        </b-col>
        <b-col>
          <b-form-group label-size="sm" id="brewerNameLabel" label-for="brewerName">
            <b-form-select
              id="brewerName"
              v-model="brewery.brewer_username"
              required
            >
            <b-form-select-option v-bind:value="brewer.username" v-for="brewer in brewers" v-bind:key="brewer.username">{{brewer.username}}</b-form-select-option>
            </b-form-select>
          </b-form-group>
        </b-col>
      </b-row>

      <b-row>
        <b-col>
          <b-form-group label-size="sm" id="hrsOfOps" label-for="Hours">
            <b-form-input
              id="Hours"
              v-model="brewery.hours_operation"
              required
              placeholder="10:00AM - 11:00PM"
            ></b-form-input>
          </b-form-group>
        </b-col>

        <b-col>
          <b-form-group label-size="sm" id="daysOfOps" label-for="Days">
            <b-form-input
              id="Days"
              v-model="brewery.days_operation"
              required
              placeholder="Mon-Sun"
            ></b-form-input>
          </b-form-group>
        </b-col>
      </b-row>

      <b-row>
        <b-col>
          <b-form-group label-size="sm" id="address" label-for="address">
            <b-form-input
              id="address"
              v-model="brewery.address_street"
              required
              placeholder="Street Address"
            ></b-form-input>
          </b-form-group>
        </b-col>

        <b-col>
          <b-form-group label-size="sm" id="city" label-for="city">
            <b-form-input
              id="city"
              v-model="brewery.address_city"
              required
              placeholder="City"
            ></b-form-input>
          </b-form-group>
        </b-col>

        <b-col>
          <b-form-group label-size="sm" id="state" label-for="state">
            <b-form-input
              id="state"
              v-model="brewery.address_state"
              required
              placeholder="State"
            ></b-form-input>
          </b-form-group>
        </b-col>

        <b-col>
          <b-form-group label-size="sm" id="zip" label-for="zip">
            <b-form-input
              id="zip"
              type="number"
              v-model="brewery.address_zip"
              required
              placeholder="Zipcode"
            ></b-form-input>
          </b-form-group>
        </b-col>
        <b-col>
          <b-form-group label-size="sm" id="phone" label-for="phone">
            <b-form-input
              id="phone"
              type="number"
              v-model="brewery.phone_number"
              required
              placeholder="Phone#"
            ></b-form-input>
          </b-form-group>
        </b-col>
      </b-row>
      <b-card-text>
        <b-row>
          <b-form-textarea
            class="description"
            label-size="sm"
            id="Description"
            v-model="brewery.history"
            placeholder="Enter a description..."
            rows="3"
            max-rows="6"
          ></b-form-textarea>
        </b-row>
      </b-card-text>
      <b-row>
        <b-card-text class="new-brewry-button">
          <b-button id="submit-btn" type="submit" size="lg" variant="warning">Submit</b-button>
        </b-card-text>
      </b-row>
    </b-form>
  </b-container>
</template>

<script>
import BreweryService from "@/services/BreweryService.js";
import UserService from "@/services/UserService.js";

export default {
  data() {
    return {
      brewery: {
        name: "",
        brewer_username: "",
        days_operation: "",
        hours_operation: "",
        address_street: "",
        address_city: "",
        address_state: "",
        address_zip: "",
        phone_number: "",
        history: "",
      },
      brewers: [],
    };
  },
  methods: {
    submitUpdatedBrewery() {
      BreweryService.addNewBrewery(this.brewery).then((response) => {
        if (response.status == 200) {
          this.refresh_data();
          location.reload();
        }
      });
    },
  },
  created() {
    UserService.getBrewers().then((response) => {
      this.brewers = response.data;
    });
  },

  refresh_data() {
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
};
</script>

<style scoped>

#submit-btn {
  margin-left: 15px;
}

#Description {
  margin: 0 15px 0 15px;
}

.new-brewery-title {
  background-color: #29abe2;
  width: 33%;
  padding: 5px 20px 5px 20px;
  margin: 0 0 30px 0;
  border-radius: 12px;
  font-family:Arial, Helvetica, sans-serif;
}

.newBreweryContainer {
  padding: 50px 0 50px 0;
}

h1 {
  padding: 20px 0;
}

.form-control {
  border-radius: 0px;
  font-size: 15px;
}

/* .container {
  margin: 20px;
  margin-bottom: 200px;
  height: 100vh;
  display: grid;
  grid-template-columns:1fr;
  grid-template-rows: 1fr 1fr 1fr;
  grid-gap: 20px;
  align-items: stretch;
  grid-template-areas:
    "header"
    "content"
    "footer";
}

header {
  grid-area: header;
  display: flex;
  justify-content: center;
  align-items: center;
  font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
  color: white;
}

content {
  grid-area: content;
  max-width: 30%;
  margin-left: 325px;
}

footer {
  grid-area: footer;
}

textarea {
  height: 100px;
}

input[type=text], select, textarea {
  width: 400%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
  font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
  font-size: 20px;
}

.btn {
  background-color: #dfc118;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 30%;
  margin-top: 6px;
}

/* Clear floats after the columns
.row:after {
  content: "";
  display: table;
  clear: both;
} */
</style>

