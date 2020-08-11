<template>
  <div class="container">
    <header><h1 class="header">Enter the information for a new brewery below:</h1></header>
    <content>
    <form class="form-style">
      <div>
        <div class="row">
          <div class="col-25">
            <label for="name">Brewery Name</label>
          </div>
          <div class="col-75">
            <input type="text" name="name" placeholder="Enter Brewery Name" v-model="breweryToUpdate.name" />
          </div>
        </div>
        <div class="row">
          <div class="col-25">
            <label for="brewerName">Brewer Name</label>
          </div>
              <!-- <div class="col-75">
                <select id="brewerName" v-model="breweryToUpdate.brewer_username">
                  <option disabled value>Select Brewer</option>
                  <option v-for="brewer in brewers" v-bind:key="brewer.username">{{brewer.username}}</option>
                </select> -->
              <!-- </div> -->
          </div>
        <div class="row">
          <div class="col-25">
              <label for="hours-operation">Hours of Operation</label>
          </div>
          <div class="col-75"> 
            <input type="text" name="hours-opertation" placeholder="10:00AM-11:00PM"
                v-model="breweryToUpdate.hours_operation" />
          </div>
        </div>
        <div class="row">
          <div class="col-25">
            <label for="days-operation">Days of Operation</label>
          </div>
          <div class="col-75">
            <input type="text" name="days-opertation" placeholder="Mon-Sun"
                v-model="breweryToUpdate.days_operation" />
          </div>
        </div>
        <div class="row">
          <div class="col-25">
            <label for="address">Street</label>
          </div>
          <div class="col-75">
            <input type="text" name="address" placeholder="Address" v-model="breweryToUpdate.address_street" />
          </div>
        </div>
        <div class="row">
          <div class="col-25">
            <label for="city">City</label>
          </div>
          <div class="col-75">
          <input type="text" name="city" placeholder="City" v-model="breweryToUpdate.address_city" />
          </div>
        </div>
        <div class="row">
          <div class="col-25">
            <label for="state">State</label>
          </div>
          <div class="col-75">
          <input type="text" name="state" placeholder="State" v-model="breweryToUpdate.address_state" />
          </div>
        </div>
        <div class="row">
          <div class="col-25">
            <label for="zipcode">Zipcode</label>
          </div>
          <div class="col-75">
          <input type="text" name="zipcode" placeholder="Zipcode" v-model="breweryToUpdate.address_zip" />
          </div>
        </div>
        <div class="row">
          <div class="col-25">
            <label for="contact-info">Phone</label>
          </div>
          <div class="col-75">
            <input type="text" name="contact-info" placeholder="Phone Number" v-model="breweryToUpdate.phone_number"/>
          </div>
        </div>
          <div class="row">
          <div class="col-25">
            <label for="history">Description</label>
          </div>
          <div class="col-75">
            <textarea type="text-area" name="history" placeholder="Description" v-model="breweryToUpdate.history" />
          </div>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit" v-on:click.prevent="submitUpdatedBrewery()">Enter</button>
      </div>
    </form>
    </content>
    <footer></footer>
  </div>
</template>

<script>
import BreweryService from "@/services/BreweryService.js"; 
//import UserService from "@/services/UserService.js"

export default {
  data() {
    return {
      brewers: [],
    }
  },

  methods: {
    submitUpdatedBrewery() {
      BreweryService.updateBrewery(this.breweryToUpdate).then(response => {
        if(response.status == 200){
          location.reload();
        }
      })
    }
  },

  computed: {
    breweryToUpdate() {
      return this.$store.state.breweries.find((brewery) => {
        console.log(brewery.brewery_id == this.$route.params.brewery_id)
        return brewery.brewery_id == this.$route.params.brewery_id;

      });
    }}


}
</script>

<style scoped>

.container {
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

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
</style>

