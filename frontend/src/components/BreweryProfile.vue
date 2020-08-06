<template>
  <div>
    <h1>brewery profile</h1>
    <div class="profile-image"></div>
    <div>
      <header class="brewery-name">{{ brewery.name }}</header>
      <p1 class="brewery-address">{{ brewery.address_street }}{{ brewery.address_city }}</p1>
      <p1 class="brewery-address">{{ brewery.address_state }}{{ brewery.address_zip }}</p1>
      <p1 class="brewery-phone">{{ brewery.phone_number }}</p1>
      <p2 class="history-bio">{{ history }}</p2>
    </div>
    <div></div>
  </div>
</template>

<script>


export default {
  name: 'brewery-profile',
  data() {
    return {

    };
  },
  props: {
    brewery: {}
  }

};
</script>

<style>
</style>