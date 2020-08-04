<template>
  <div>
    <form class="findUser">
      <div>
        <li>
          <input type="text" name="name" placeholder="Brewery Name" v-model="brewery.name" /> 
        </li>
        <li class="sidebyside">
          <input  type="text" name="hours-opertation" placeholder="Hours of Opertion" v-model="brewery.hrsOfOperation" /> 
          <input  type="text" name="days-opertation" placeholder="Days of Opertion" v-model="brewery.daysOfOperation" /> 
        </li>
        <li>
          <input type="number" name="address" placeholder="Address" v-model="brewery.addressId" /> 
        </li>
        <li>
          <input type="text" name="city" placeholder="City" v-model="brewery.city" />
          </li>
         <li> <input type="text" name="state" placeholder="State" v-model="brewery.state" />
         </li>
         <li>
          <input type="text" name="zipcode" placeholder="Zipcode" v-model="brewery.zipcode" />
        </li>
          <li>
          <input type="text" name="contact-info" placeholder="Phone Number" v-model="brewery.contactInfo" />
        </li>
        <li>
          <input type="text-area" name="history" placeholder="Description" v-model="brewery.historyBio" />
        </li>
      </div>
      <div>
      </div>
      <button class="btn btn-lg btn-primary btn-block" type="submit" v-on:click.prevent="submitNewBrewery()" >Enter</button>
    </form>
  </div>
</template>

<script>
import BreweryService from "@/services/BreweryService.js"; 

export default {
  data() {
    return {
      brewery: {
        name: "",
        addressId: "",
        historyBio: "",
        daysOfOperation: "",
        hrsOfOperation: "",
        /*address: "",
        city: "",
        state: "",
        zipcode: "",
        contactInfo: "",*/
      },
    };
  },
  methods: {
    submitNewBrewery() {
      BreweryService.addNewBrewery(this.brewery);
    },
  },
};
</script>

<style>
.findUser {
  margin:10px auto;
	max-width: 400px;
	padding: 20px 12px 10px 20px;
	font: 13px "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}
.findUser li {
	padding: 0;
	display: block;
	list-style: none;
	margin: 10px 0 0 0;
}
.sidebyside {
  padding: 10px 0px 10px 0px
}
</style>

