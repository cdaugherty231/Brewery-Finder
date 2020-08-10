<template>
  <div>
    <table>
      <thead>
        <tr class="table-header">
          <th>Brewery</th>
          <th>Days of Operation</th>
          <th>Hours of Opertaion</th>
          <th>City</th>
          <th>State</th>
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
            <input type="text" id="cityFilter" v-model="filter.address_city" />
          </td>
          <td>
            <input type="text" id="stateFilter" v-model="filter.address_state" />
          </td>
        </tr>
        <tr class="brewery-tbl" v-for="brewery in filteredList" :key="brewery.name">
          <td> <router-link :to="{name: 'breweryProfileView', params: {brewery_id: brewery.brewery_id}}" >{{brewery.name}}</router-link></td>
          <td>{{brewery.days_operation}}</td>
          <td>{{brewery.hours_operation}}</td>
          <td>{{brewery.address_city}}</td>
          <td>{{brewery.address_state}}</td>
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
            .includes(this.filter.days_operation.toLowerCase())))&&
          brewery.hours_operation
            .toLowerCase()
            .includes(this.filter.hours_operation.toLowerCase()) &&
          brewery.address_city
            .toLowerCase()
            .includes(this.filter.address_city.toLowerCase()) &&
          brewery.address_state
            .toLowerCase()
            .includes(this.filter.address_state.toLowerCase())
        );
      });
    },
  },
};
</script>

<style>

table {
  color: #333;
    font-family: Helvetica, Arial, sans-serif;
    width: 640px; 
    border-collapse: 
    collapse; border-spacing: 0; 
} 

  
</style>