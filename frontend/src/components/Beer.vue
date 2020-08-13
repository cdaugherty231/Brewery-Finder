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


  <div>
    <b-card id="card-box" no-body class="overflow-hidden">
      <b-row no-gutters>
    <div class="profile-image"></div>
    <b-col md="6">
      <b-card-img :src="imagePath" alt="Image" class="rounded-0"></b-card-img> 
    </b-col>
    <b-col md="6">
      <b-card-body id="info-box"  v-bind = beer.beer_name>
       <b-card-text id="beer-title">{{beer.beer_name}}</b-card-text>
       <b-card-text id="beer-description">{{ beer.beer_description }}</b-card-text>
       <b-card-text id="beer-abv">{{ beer.abv }}</b-card-text>
       <b-card-text id="beer-type">{{ beer.beer_type }}</b-card-text>
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
        let images = require.context('../assets/beer_assets', false, /\.jpeg$/)
        return images('./' + "001truth" + ".jpeg")
      }
    }
  }
}

</script>


<style>

#card-box {
  padding: 20px 30px 20px 30px;
}

#beer-title {
  font-family: Arial, Helvetica, sans-serif;
  font-weight: 770;
  font-size: 30px;
}

#beer-description {
  font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
  font-size: 20px;
  font-weight: 500;
}

#beer-abv {
  font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
  font-size: 30px;
}

#beer-type {
  font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
  font-size: 25px;
}

</style>