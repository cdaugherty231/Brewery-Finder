<template>
  <div class="container">
    <header></header>
    <content>
    <h1 class="header">Enter the information for a new brewery below:</h1>
    <form class="form-style">
      <div>
        <div class="row">
          <div class="col-25">
            <label for="name">Brewery Name</label>
          </div>
          <div class="col-75">
            <input type="text" name="name" placeholder="Enter Name.." v-model="brewery.name" />
          </div>
        </div>
        <div class="row">
          <div class="col-25">
            <label for="brewerName">Brewery Name</label>
              <div class="col-75">
                <select id="brewerName">
                  <option value>Select Brewer</option>
                  <option value v-for="brewer in brewers" v-bind:key="brewer.username">{{brewer.username}}</option>
                </select>
              </div>
          </div>
        </div>
        <div class="row">
          <div class="col-25">
              <label for="hours-operation">Hours of Operation</label>
          </div>
          <div class="col-75"> 
            <input type="text" name="hours-opertation" placeholder="Hours of Operation"
                v-model="brewery.hours_operation" />
          </div>
        </div>
        <div class="row">
          <div class="col-25">
            <label for="days-operation">Days of Operation</label>
          </div>
          <div class="col-75">
            <input type="text" name="days-opertation" placeholder="Days of Operation"
                v-model="brewery.days_operation" />
          </div>
        </div>
        <div class="row">
          <div class="col-25">
            <label for="address">Street</label>
          </div>
          <div class="col-75">
            <input type="text" name="address" placeholder="Address" v-model="brewery.address_street" />
          </div>
        </div>
        <div class="row">
          <div class="col-25">
            <label for="city">City</label>
          </div>
          <div class="col-75">
          <input type="text" name="city" placeholder="City" v-model="brewery.address_city" />
          </div>
        </div>
        <div class="row">
          <div class="col-25">
            <label for="state">State</label>
          </div>
          <div class="col-75">
          <input type="text" name="state" placeholder="State" v-model="brewery.address_state" />
          </div>
        </div>
        <div class="row">
          <div class="col-25">
            <label for="zipcode">Zipcode</label>
          </div>
          <div class="col-75">
          <input type="text" name="zipcode" placeholder="Zipcode" v-model="brewery.address_zip" />
          </div>
        </div>
        <div class="row">
          <div class="col-25">
            <label for="contact-info">Phone</label>
          </div>
          <div class="col-75">
            <input type="text" name="contact-info" placeholder="Phone#" v-model="brewery.phone_number"/>
          </div>
        </div>
          <div class="row">
          <div class="col-25">
            <label for="history">Description</label>
          </div>
          <div class="col-75">
            <textarea type="text-area" name="history" placeholder="Description" v-model="brewery.history" />
          </div>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit" v-on:click.prevent="submitNewBrewery()">Enter</button>
      </div>
    </form>
    </content>
    <footer></footer>
  </div>
</template>

<script>
import BreweryService from "@/services/BreweryService.js"; 
import UserService from "@/services/UserService.js"

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
        history: ""
      },
      brewers: [

      ]
    }
  },
  methods: {
    submitNewBrewery() {
      BreweryService.addNewBrewery(this.brewery).then(response => {
        if(response.status == 200){
          location.reload();
        }
      })
    }
  },
  created() {
      UserService.getBrewers().then((response) => {
        this.brewers = response.data;
      });
    }
};
</script>

<style scoped>

.container {
  height: 100vh;
  display: grid;
  grid-template-columns:1fr;
  grid-template-rows: 1fr 1fr 1fr;
  background-color: aliceblue;
  grid-gap: 20px;
  align-items: stretch;
  grid-template-areas:
    "header "
    "content"
    "footer";
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
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

