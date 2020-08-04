<template>
  <div>
    <form class="findUser">
      <div>
        <input type="text" name="name" placeholder="Brewery Name" v-model="brewery.name" />
        <input type="number" name="address" placeholder="Address" v-model="brewery.addressId" />
        <input type="text" name="hours-opertation" placeholder="Hours of Opertion" v-model="brewery.hrsOfOperation" />
        <input type="text" name="days-opertation" placeholder="Days of Opertion" v-model="brewery.daysOfOperation" />
        <input type="number" name="address" placeholder="Address" v-model="brewery.addressId" />
        <!--<input type="text" name="city" placeholder="City" v-model="brewery.city" />
        <input type="text" name="state" placeholder="State" v-model="brewery.state" />
        <input type="text" name="zipcode" placeholder="Zipcode" v-model="brewery.zipcode" />
        <input type="text" name="contact-info" placeholder="Phone Number" v-model="brewery.contactInfo" />-->
        <input type="text-area" name="history" placeholder="Description" v-model="brewery.historyBio" />
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
  margin: 10px;
  font-size: 1rem;
}
</style>