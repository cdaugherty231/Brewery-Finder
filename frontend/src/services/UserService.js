import axios from 'axios';

export default {

  getUserByUsername(user) {
    return axios.get('/user/:username', user);
  },

  getAllUsers() {
    return axios.get('/users');
  },
  
  addNewBrewery(name) {
    return axios.push('/home');
  }

};
