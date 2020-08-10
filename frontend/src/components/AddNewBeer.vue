<template>
    <div class="main container">
        <h1 class="white-text"> Add New Beer to a {{breweryName}}'s Beer List </h1>

        <form class="form-control">
            <li class="register-box">
                <input 
                    type="text"
                    name="beer_name"
                    placeholder="New Beer Name"
                    v-model="newBeer.beer_name" />
            </li>
            <li class="register-box">
                <input
                    type="text-area"
                    rows="4" cols="30"
                    name="beer_description"
                    placeholder="Describe your new beer"
                    v-model="newBeer.beer_description" />
            </li>
            <li class="register-box">
                <input
                    type="text"
                    name="abv"
                    placeholder="Alchohol by Volume"
                    v-model="newBeer.abv"/>
            </li>
            <li class="register-box">
                <input
                    type="text"
                    name="beer_type"
                    placeholder="Beer Type"
                    v-model="newBeer.beer_type"/>
            </li>
            <li class="register-box">
                <h6 class="white-text"> PLACEHOLDER FOR BEER IMAGE </h6>
            </li>
            <button
                class="btn"
                type="submit"
                v-on:click.prevent="submitNewBeer()"
                >Submit New Beer</button>
        </form>

    </div>
  
</template>

<script>
import BreweryService from '@/services/BreweryService.js'

export default {
    name: 'add-new-beer',
    data() {
        return {
            newBeer: {
                beer_name: '',
                is_active: Boolean,
                beer_description: '',
                abv: '',
                beer_type: '',
                beer_image: ''
            },


        }
    },

    props: {
        breweryName: String,
    },

    methods: {
        submitNewBeer(){
            BreweryService.addNewBeer(this.newBeer, this.breweryName);
        }
    }

}
</script>

<style>


.white-text {
    color: white;
    display: flex;
    justify-content: center;
    text-align: center;
}


.form-control {
  border-radius: 25px;
  font-size: 30px;
  padding: 10px;
  border:none;	
  outline:none;
}

.form-control .register-box {
  display: flex;
  font-size: 15px;
  justify-content: center;
  text-align: center;
  margin: 20px 0;
  padding: 10px;
}

.btn {	
 padding: 10px;
 margin: 10px;
 font-size: 20px;
 border-radius: 5px;
 background-color: rgb(247, 206, 71);
}

</style>