import axios from 'axios';

export default {
  
  addNewBrewery(brewery) {
    return axios.post('/breweries', brewery);
  }

};
