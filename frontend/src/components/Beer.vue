<template>
  <div>
    <h1>Beer Item</h1>
    <div class="profile-image"></div>
    <div>
      <header class="beer-name">{{ beer.beer_name }}</header>
      <p1 class="beer-desciption">{{ beer.beer_description }}</p1>
      <p1 class="beer-specs">{{ beer.abv }}{{ beer.beer_type }}</p1>
    </div>
    <div></div>
  </div>
</template>

<script>


export default {
  name: 'beer',
  data() {
    return {

    };
  },
  props: {
    beer: {
        
    }
  }

};
</script>

<style>
</style>