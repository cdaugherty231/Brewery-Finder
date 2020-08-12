<template>
  <b-container class="container">
    <b-card-text></b-card-text>
    <b-form @submit="submitUpdatedBrewery">
     <h1>Add New Brewery</h1>
      <b-row>
        <b-col>
          <b-card-text>
            Brewery Name
          </b-card-text>
          <b-form-group
            label-size="sm"
            id="breweryNameLabel"
            label-for="breweryName"
          >
            <b-form-input
              id="breweryName"
              v-model="brewery.name"
              required
              placeholder="Enter Brewery Name"
            ></b-form-input>
          </b-form-group>
        </b-col>
        <b-col>
          <b-form-group label-size="sm" id="brewerNameLabel" label="Brewer" label-for="brewerName">
            <b-form-select
              id="brewerName"
              v-model="brewery.brewer_username"
              :options="brewers"
              required
              placeholder="Selct the Brewer for this Brewery"
            ></b-form-select>
          </b-form-group>
        </b-col>
      </b-row>

      <b-row>
        <b-col>
          <b-form-group label-size="sm" id="hrsOfOps" label="Hours of Opertation" label-for="Hours">
            <b-form-input
              id="Hours"
              v-model="brewery.hours_operation"
              required
              placeholder="Enter Hours of Operation"
            ></b-form-input>
          </b-form-group>
        </b-col>

        <b-col>
          <b-form-group label-size="sm" id="daysOfOps" label="Days of Opertation" label-for="Days">
            <b-form-input
              id="Days"
              v-model="brewery.days_operation"
              required
              placeholder="Enter Days of Operation"
            ></b-form-input>
          </b-form-group>
        </b-col>
      </b-row>

      <b-row>
        <b-col>
          <b-form-group label-size="sm" id="address" label="Address" label-for="address">
            <b-form-input
              id="address"
              v-model="brewery.address_street"
              required
              placeholder="Enter a Street Address"
            ></b-form-input>
          </b-form-group>
        </b-col>

        <b-col>
          <b-form-group label-size="sm" id="city" label="City" label-for="city">
            <b-form-input
              id="city"
              v-model="brewery.address_city"
              required
              placeholder="Enter a City"
            ></b-form-input>
          </b-form-group>
        </b-col>

        <b-col>
          <b-form-group label-size="sm" id="state" label="State" label-for="state">
            <b-form-input
              id="state"
              v-model="brewery.address_state"
              required
              placeholder="Enter a State"
            ></b-form-input>
          </b-form-group>
        </b-col>

        <b-col>
          <b-form-group label-size="sm" id="zip" label="ZipCode" label-for="zip">
            <b-form-input
              id="zip"
              type="number"
              v-model="brewery.address_zip"
              required
              placeholder="Enter a Zipcode"
            ></b-form-input>
          </b-form-group>
        </b-col>
        <b-col>
          <b-form-group label-size="sm" id="phone" label="Contact Number" label-for="phone">
            <b-form-input
              id="phone"
              type="number"
              v-model="brewery.phone_number"
              required
              placeholder="Enter a Phone Number"
            ></b-form-input>
          </b-form-group>
        </b-col>
      </b-row>
      <b-card-text>
        <b-row>
          <label for="Description">Description</label>
          <b-form-textarea
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
        <b-card-text>
          <b-button type="submit" size="lg" variant="primary">Submit</b-button>
        </b-card-text>
      </b-row>

      <!-- <div>
        <form>
          <label for="name">Brewery Name</label>
          </div>
          <div class="col-75">
            <input type="text" name="name" placeholder="Enter Brewery Name" v-model="brewery.name" />
          </div>
          </div>-->
          <!-- <div class="row">
          <div class="col-25">
            <label for="brewerName">Brewer Name</label>
          </div>
              <div class="col-75">
                <select id="brewerName" v-model="brewery.brewer_username">
                  <option disabled value>Select Brewer</option>
                  <option v-for="brewebrewery in brewers" v-bind:key="brewer.username">{{brewer.username}}</option>
                </select>
              </div>
          </div>-->
          <!-- <div class="row">
          <div class="col-25">
              <label for="hours-operation">Hours of Operation</label>
          </div>
          <div class="col-75"> 
            <input type="text" name="hours-opertation" placeholder="10:00AM-11:00PM"
                v-model="brewery.hours_operation" />
          </div>
        </div>
        <div class="row">
          <div class="col-25">
            <label for="days-operation">Days of Operation</label>
          </div>
          <div class="col-75">
            <input type="text" name="days-opertation" placeholder="Mon-Sun"
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
            <input type="text" name="contact-info" placeholder="Phone Number" v-model="brewery.phone_number"/>
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
          <button
        class="btn btn-lg btn-primary btn-block"
        type="submit"
          >Enter</button>
        </form>
      </div>-->
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
      BreweryService.updateBrewer(this.brewery).then((response) => {
        if (response.status == 200) {
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
};
</script>

<style scoped>

label, b-form-group {
  font-weight: bold;
  font-size: 30px;
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

