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
  }

};
