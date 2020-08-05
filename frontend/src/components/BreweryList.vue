<template>
  <div>
    <header>Breweries</header>
    <table>
      <thead>
        <tr>
          <th>Brewery</th>
          <th>Brewer</th>
          <th>Days of Operation</th>
          <th>Hours of Opertaion</th>
          <th>Address</th>
          <th>City</th>
          <th>State</th>
          <th>Zipcode</th>
          <th>Phone</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>
            <input type="text" id="breweryNameFilter" v-model="filter.breweryName" />
          </td>
          <td>
            <input type="text" id="brewerNameFilter" v-model="filter.brewerName" />
          </td>
          <td>
            <input type="text" id="daysOfOpsFilter" v-model="filter.daysOfOps" />
          </td>
          <td>
            <input type="text" id="hrsOfOpsFilter" v-model="filter.hrsOfOps" />
          </td>
          <td>
            <input type="text" id="addressFilter" v-model="filter.address" />
          </td>
          <td>
            <input type="text" id="cityFilter" v-model="filter.city" />
          </td>
          <td>
            <input type="text" id="stateFilter" v-model="filter.state" />
          </td>
          <td>
            <input type="text" id="zipFilter" v-model="filter.zip" />
          </td>
          <td>
            <input type="text" id="phoneFilter" v-model="filter.phone" />
          </td>
        </tr>
        <tr v-for="brewery in filteredList" :key="brewery.breweryName">
          <td>{{brewery.name}}</td>
          <td>{{brewery.brewer_username}}</td>
          <td>{{brewery.days_operation}}</td>
          <td>{{brewery.hours_operation}}</td>
          <td>{{brewery.address_street}}</td>
          <td>{{brewery.address_city}}</td>
          <td>{{brewery.address_state}}</td>
          <td>{{brewery.address_zip}}</td>
          <td>{{brewery.phone_number}}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
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
    };
  },
  computed: {
    filteredList() {
      return this.brewery.filter((brewery) => {
        return (
          brewery.name
            .toLowerCase()
            .includes(this.filter.breweryName.toLowerCase()) &&
          brewery.brewer_username
            .toLowerCase()
            .includes(this.filter.breweryName.toLowerCase()) &&
          brewery.days_operation
            .toLowerCase()
            .includes(this.filter.daysOfOps.toLowerCase()) &&
          brewery.hours_opration
            .toLowerCase()
            .includes(this.filter.hrsOfOps.toLowerCase()) &&
          brewery.address_street
            .toLowerCase()
            .includes(this.filter.address.toLowerCase()) &&
          brewery.address_city
            .toLowerCase()
            .includes(this.filter.city.toLowerCase()) &&
          brewery.address_state
            .toLowerCase()
            .includes(this.filter.state.toLowerCase()) &&
          brewery.address_zip
            .toLowerCase()
            .includes(this.filter.zip.toLowerCase()) &&
          brewery.phone_number
            .toLowerCase()
            .includes(this.filter.phone.toLowerCase())
        );
      });
    },
  },
};
</script>

<style>
</style>