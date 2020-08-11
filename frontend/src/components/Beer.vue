<template>
  <div class="card">
    <div class="profile-image"></div>
    <div>
      <h3>{{ beer.beer_name }}</h3>
      <p class="beer-desciption">{{ beer.beer_description }}</p>
      <p class="beer-specs">{{ beer.abv }}</p>
      <p class="beer-type">{{ beer.beer_type }}</p>
    </div>
    <div></div>
  </div>
</template>

<script>
export default {

  name:'beer',

  props: {
    beer: Object
  },
  computed:{

  }

};
</script>


<style>

.card {
  background: #e8e479;
  border-radius: 0.25rem;
  padding: 10px;
  border: 1px;
  /*box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.1), 0 1px 2px 0 rgba(0, 0, 0, 0.06);*/
  margin-bottom: 10px;
}

</style>