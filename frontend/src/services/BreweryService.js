import axios from 'axios';

export default {
  
  addNewBrewery(brewery) {
    return axios.post('/breweries', brewery);
  },

  getAllBreweries() {
      return axios.get('/breweries');
  },

  getBreweryById(id) {
      return axios.get(`/breweries/${id}`);
  },

  getBeersByBrewery(name) {
    return axios.get(`/breweries/beers/${name}`);
  },

  getBeerProduct(){
    return axios.get(`/beerproduct`);
  },

  updateBrewery(updatedBrewery){
    return axios.put('/breweries', updatedBrewery);
  },

  addNewBeer(beerProductToAdd, breweryName){
    return axios.post(`/beerproduct/${breweryName}`, beerProductToAdd);
  },

};