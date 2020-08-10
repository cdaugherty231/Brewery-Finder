<template>
    <div>
        <h1> Add New Beer to a Brewery's Beer List </h1>

        <form class="addBeer-form-style">
            <li>
                <input 
                    type="text"
                    name="beer_name"
                    placeholder="New Beer Name"
                    v-model="newBeer.beer_name" />
            </li>
            <li>
                <input
                    type="text-area"
                    rows="4" cols="30"
                    name="beer_description"
                    placeholder="Describe your new beer"
                    v-model="newBeer.beer_description" />
            </li>
            <li>
                <input
                    type="text"
                    name="abv"
                    placeholder="Alchohol by Volume"
                    v-model="newBeer.abv"/>
            </li>
            <li>
                <input
                    type="text"
                    name="beer_type"
                    placeholder="Beer Type"
                    v-model="newBeer.beer_type"/>
            </li>
            <li>
                
            </li>
            <li>
                <h3> PLACEHOLDER FOR BEER IMAGE </h3>
            </li>
            <button
                type="submit"
                v-on:click.prevent="submitNewBeer()"
                >Enter</button>
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

</style>