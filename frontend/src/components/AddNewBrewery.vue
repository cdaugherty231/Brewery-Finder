<template>
  <div>
    <h1 class="header">Enter the information for a new brewery below:</h1>
    <form class="form-style">
      <div>
        <li>
          <input type="text" name="name" placeholder="Brewery Name" v-model="brewery.name" />
        </li>
        <li>
          <select id="brewerName">
            <option value>Select Brewer</option>
            <option value v-for="brewer in brewers" v-bind:key="brewer.username">{{brewer.username}}</option>
          </select>
        </li>
        <li class="sidebyside">
          <input
            type="text"
            name="hours-opertation"
            placeholder="Hours of Operation"
            v-model="brewery.hours_operation"
          />
          <input 
            type="text"
            name="days-opertation"
            placeholder="Days of Operation"
            v-model="brewery.days_operation"
          />
        </li>
        <li>
          <input type="text" name="address" placeholder="Address" v-model="brewery.address_street" />
        </li>
        <li>
          <input type="text" name="city" placeholder="City" v-model="brewery.address_city" />
        </li>
        <li>
          <input type="text" name="state" placeholder="State" v-model="brewery.address_state" />
        </li>
        <li>
          <input type="text" name="zipcode" placeholder="Zipcode" v-model="brewery.address_zip" />
        </li>
        <li>
          <input
            type="text"
            name="contact-info"
            placeholder="Phone#"
            v-model="brewery.phone_number"
          />
        </li>
        <li>
          <textarea
            type="text-area"
            name="history"
            placeholder="Description"
            v-model="brewery.history"
          />
        </li>
        <button
          class="btn btn-lg btn-primary btn-block"
          type="submit"
          v-on:click.prevent="submitNewBrewery()"
        >Enter</button>
      </div>
    </form>
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
      BreweryService.addNewBrewery(this.brewery);
    },
  },
  created() {
      UserService.getBrewers().then((respone) => {
        this.brewers = respone.data;
      });
    }
};
</script>

<style>
.background {
  background-color: #e0dd04;
}
.header {
  padding: 30px;
  margin-left: auto;
  margin-right: auto;
  margin-top: 20px;
  text-align: center;
  background: #e0dd04;
  color: rgb(54, 86, 145);
  font: 20px "Arial Black", Gadget, sans-serif;
  width: 80%;
}

.form-style {
  display: flex;
  justify-content: center;
  margin: auto;
  max-width: 600px;
  padding: 20px 12px 10px 20px;
  font: 13px "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}
.form-style li {
  padding: 0;
  display: block;
  list-style: none;
  margin: 10px 0 0 0;
}
.sidebyside {
  padding: 10px 0px 10px 0px;
}

.textarea {
  height: 300px;
}
</style>

