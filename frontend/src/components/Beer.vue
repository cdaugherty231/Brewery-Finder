<template>

<!-- <div>
  <b-card no-body class="overflow-hidden" style="max-width: 540px;">
    <b-row no-gutters>
      <b-col md="6">
        <b-card-img src="https://picsum.photos/400/400/?image=20" alt="Image" class="rounded-0"></b-card-img>
      </b-col>
      <b-col md="6">
        <b-card-body title="Horizontal Card">
          <b-card-text>
            This is a wider card with supporting text as a natural lead-in to additional content.
            This content is a little bit longer.
          </b-card-text>
        </b-card-body>
      </b-col>
    </b-row>
  </b-card>
</div> -->


  <div class="beer-card">
    <b-card no-body class="overflow-hidden" style="max-width: 540px;">
      <b-row no-gutters>
    <div class="profile-image"></div>
    <b-col md="6">
      <b-card-img :src="imagePath" alt="Image" class="rounded-0"></b-card-img>
 
    </b-col>
    <b-col md="6">
      <b-card-body v-bind:title=beer.beer_name>
       <b-card-text>{{ beer.beer_description }}</b-card-text>
       <b-card-text>{{ beer.abv }}</b-card-text>
       <b-card-text>{{ beer.beer_type }}</b-card-text>
      </b-card-body>
    </b-col>
    <div></div>
      </b-row>
    </b-card>
  </div>
</template>

<script>
export default {

  name:'beer',

  props: {
    beer: Object
  },
  computed:{
    imagePath(){

      if(this.beer.beer_image.endsWith(".jpeg")){
        let images = require.context('../assets/beer_assets', false, /\.jpeg$/)
        return images('./' + this.beer.beer_image)
      } else if(this.beer.beer_image.endsWith(".png")) {
        let images = require.context('../assets/beer_assets', false, /\.png$/)
        return images('./' + this.beer.beer_image)
      } else if(this.beer.beer_image.endsWith(".jpg")) {
        let images = require.context('../assets/beer_assets', false, /\.jpg$/)
        return images('./' + this.beer.beer_image)
      } else {
        let images = require.context('../assets/beer_assets', false, /\.jpg$/)
        return images('./image_unavailable.jpg')
      }
    }
  }
}

</script>


<style>

.beer-card {
  background: #e8e479;
  border-radius: 0.25rem;
  padding: 10px;
  border: 1px;
  /*box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.1), 0 1px 2px 0 rgba(0, 0, 0, 0.06);*/
  margin-bottom: 10px;
}

</style>