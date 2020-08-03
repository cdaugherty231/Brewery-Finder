<template>
  <div>
    <form class="findUser">
      <div>
      <input type="text" name="name" placeholder="Brewery Name" />
      <input type="text" name="Days-Hours of Operation" placeholder="Days/Hours of Opertions" />
      <input type="text" name="address" placeholder="Address" />
      <input type="text" name="city" placeholder="City" />
      <input type="text" name="state" placeholder="State" />
      <input type="text" name="zipcode" placeholder="Zipcode" />
      <input type="text" name="contact-info" placeholder="Phone Number" />
      <input type="text-area" name="history" placeholder="Description" />
      </div>
      <div>
        <input type="img" name="photos">
      </div>
      <button>Enter</button>
    </form>
  </div>
</template>

<script>
import UserService from "@/services/UserService.js";

export default {
  methods: {
    addNewBrewery(name) {
      UserService.addNewBrewery(username);
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