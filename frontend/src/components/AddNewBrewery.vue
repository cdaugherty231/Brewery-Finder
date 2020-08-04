<template>
  <div>
    <form class="findUser">
      <div>
      <input type="text" name="name" placeholder="Brewery Name" v-model="brewery.name" />
      <input type="text" name="hours-opertation" placeholder="Hours of Opertion" v-model="brewery.hrsOp" />
      <input type="text" name="address" placeholder="Address" v-model="brewery.address" />
      <input type="text" name="city" placeholder="City" v-model="brewery.city"/>
      <input type="text" name="state" placeholder="State" v-model="brewery.state"/>
      <input type="text" name="zipcode" placeholder="Zipcode" v-model="brewery.zipcode"/>
      <input type="text" name="contact-info" placeholder="Phone Number" v-model="brewery.contactInfo"/>
      <input type="text-area" name="history" placeholder="Description" v-model="brewery.history"/>
      </div>
      <div>
        <input type="img" name="photos" placeholder="Add Photos Here">
      </div>
      <button class="btn btn-lg btn-primary btn-block" type="submit" v-on:click="addNewBrewery()">Enter</button>
    </form>
  </div>
</template>

<script>
import UserService from "@/services/UserService.js";

export default {
    data() {
        return {
            brewery: {
                name: '',
                hrsOp: '',
                address: '',
                city: '',
                state: '',
                zipcode: '',
                contactInfo: '',
                history: ''
            }
        }
    },
  methods: {
    addNewBrewery(brewery) {
      UserService.addNewBrewery(brewery);
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