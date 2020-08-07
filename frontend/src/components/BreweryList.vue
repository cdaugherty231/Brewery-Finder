<template>
  <div>
    <table>
      <thead>
        <tr class="table-header">
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
            <input type="text" id="breweryNameFilter" v-model="filter.name" />
          </td>
          <td>
            <input type="text" id="daysOfOpsFilter" v-model="filter.days_operation" />
          </td>
          <td>
            <input type="text" id="hrsOfOpsFilter" v-model="filter.hours_operation" />
          </td>
          <td>
            <input type="text" id="addressFilter" v-model="filter.address_street" />
          </td>
          <td>
            <input type="text" id="cityFilter" v-model="filter.address_city" />
          </td>
          <td>
            <input type="text" id="stateFilter" v-model="filter.address_state" />
          </td>
          <td>
            <input type="text" id="zipFilter" v-model="filter.address_zip" />
          </td>
          <td>
            <input type="text" id="phoneFilter" v-model="filter.phone_number" />
          </td>
        </tr>
        <tr v-for="brewery in filteredList" :key="brewery.name">
          <td> <router-link :to="{name: 'breweryProfileView', params: {brewery_id: brewery.brewery_id}}" >{{brewery.name}}</router-link></td>
          <td>{{brewery.username}}</td>
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
      filter: { 
        name: "",
        brewer_username: "",
        days_operation: "",
        hours_operation: "",
        address_street: "",
        address_city: "",
        address_state: "",
        address_zip: (Number),
        phone_number: "",
      },
    };
  },

  computed: {
    filteredList() {
      return this.$store.state.breweries.filter((brewery) => {
        return (
          brewery.name
            .toLowerCase()
            .includes(this.filter.name.toLowerCase()) &&
          brewery.brewer_username
            .toLowerCase()
            .includes(this.filter.brewer_username.toLowerCase()) &&
         ((brewery.days_operation !== null) &&
         (brewery.days_operation
            .toLowerCase()
            .includes(this.filter.days_operation.toLowerCase())))
          /*brewery.hours_operation
            .toLowerCase()
            .includes(this.filter.hours_operation.toLowerCase()) &&
          brewery.address_street
            .toLowerCase()
            .includes(this.filter.address_street.toLowerCase()) &&
          brewery.address_city
            .toLowerCase()
            .includes(this.filter.address_city.toLowerCase()) &&
          brewery.address_state
            .toLowerCase()
            .includes(this.filter.address_state.toLowerCase()) &&
          brewery.address_zip
            .includes(this.filter.address_zip.toString()) &&
          brewery.phone_number
            .includes(this.filter.phone_number)*/
        );
      });
    },
  },
};
</script>

<style>
</style>