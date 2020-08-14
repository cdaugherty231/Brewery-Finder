<template>
  <div>
    <b-row class="justify-content-lg-center" id="row">
      <h1>
        <span class="aboutTitle">About the Developers</span>
      </h1>
    </b-row>
    <b-row class="justify-content-lg-center" id="row">
      <b-card-group deck>
        <b-card
          title="Salvador Mendoza"
          img-src="../img/Salvador Mendoza LinkedIn Favorite.jpg"
          img-alt="Image"
          img-top
          tag="article"
          style="max-width: 20rem"
          class="mb"
          bg-variant="info"
        >
          <b-card-text>I'm looking for a position where I can master new technologies and I look forward to working in a diverse team to develop creative solutions.</b-card-text>
        </b-card>
        <b-card
          title="Conner Daugherty"
          img-src="../img/conner_daugherty.jpg"
          img-alt="Image"
          img-top
          tag="article"
          style="max-width: 20rem"
          class="mb"
          bg-variant="info"
        >
          <b-card-text>I enjoy innovation and being part of new ideas that inspire others. I look forward to entering the field of technology and growing on a dynamic development team.</b-card-text>
        </b-card>
        <b-card
          title="Greyson Marks"
          img-src="../img/greyson_marks.jpeg"
          img-alt="Image"
          img-top
          tag="article"
          style="max-width: 20rem"
          class="mb"
          bg-variant="info"
        >
          <b-card-text>I am motivated by the enjoyment that comes with learning a brand’s story and getting to tell that in and innovative way that excites the audience. </b-card-text>
        </b-card>
      </b-card-group>
    </b-row>
    <b-row class="justify-content-lg-center" id="row">
      <b-card-group deck>
        <b-card
          title="Tien Huynh"
          img-src="../img/tien_huynh.jpeg"
          img-alt="Image"
          img-top
          tag="article"
          style="max-width: 20rem"
          class="mb"
          bg-variant="info"
        >
          <b-card-text>I'm looking for a position where I can master new technologies and can look forward to coming into work each day!</b-card-text>
        </b-card>
        <b-card
          title="Patrick Lorenz"
          img-src="../img/Patrick Lorenz LinkedIn Favorite.jpg"
          img-alt="Image"
          img-top
          tag="article"
          style="max-width: 20rem"
          class="mb"
          bg-variant="info"
        >
          <b-card-text>I have the desire to harness the power of technology as a junior software developer, so I can improve myself and the world.</b-card-text>
        </b-card>
      </b-card-group>
    </b-row>
    <h2></h2>
  </div>
</template>

<script>
export default {};
</script>

<style scoped>
div {
    padding-bottom: 20px;
}

#row {
  margin-top: 50px;
}

.aboutTitle {
  background-color: #f5b424 ;
  border-radius: 8px;
  font-size: 50px;
  font-family: Verdana, Geneva, Tahoma, sans-serif;
  padding: 20px;
}

/* colors: 
yellow = #fcee21 
ornage = #fbb03b
blue = #29abe2*/
</style>