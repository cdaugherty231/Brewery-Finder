import axios from 'axios';

export default {

  getUserByUsername(user) {
    return axios.get('/user/:username', user);
  },

  getAllUsers() {
    return axios.get('/users');
  },
  
  addNewBrewery(brewery) {
    return axios.post('/breweries', brewery);
  }

};
