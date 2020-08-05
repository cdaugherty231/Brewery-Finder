import axios from 'axios';

export default {

  getUserByUsername(user) {
    return axios.get('/user/:username', user);
  },

  getAllUsers() {
    return axios.get('/users');
  },

  getUsersByRole() {
    return axios.get('/users/role?role=ROLE_USER');
  },
  getBrewers() {
    return axios.get('/users/role?role=ROLE_BREWER');
  }

};
