<template>
  <div id="login" class="text-center container">
    <header>Test</header>
    <content>Content
    <form class="form-signin" @submit.prevent="login">
      <h1 class="h3 mb-3 font-weight-normal please-sign-in login-box">Please Sign In</h1>
      <div
        class="alert alert-danger login-box"
        role="alert"
        v-if="invalidCredentials"
      >Invalid username and password!</div>
      <div
        class="alert alert-success login-box"
        role="alert"
        v-if="this.$route.query.registration"
      >Thank you for registering, please sign in.</div>
        
      <div class="login-box">
      <input
        type="text"
        id="username"
        class="form-control"
        placeholder="Username"
        v-model="user.username"
        required
        autofocus
      /></div>

      <div class="login-box">
      <input
        type="password"
        id="password"
        class="form-control"
        placeholder="Password"
        v-model="user.password"
        required
      /></div>

      <div class="login-box">
      <router-link class ="white-txt" :to="{ name: 'register' }">Need an account?</router-link>
      </div>

      <div class="login-box">
      <button class="login-btn" type="submit">Sign in</button>
    
      </div> 
    </form>
    </content>
    <footer>Footer Test</footer>

  </div>
</template>

<script>
import authService from '../services/AuthService';

export default {
  name: 'login',
  components: {},
  data() {
    return {
      user: {
        username: '',
        password: ''
      },
      invalidCredentials: false
    };
  },
  methods: {
    login() {
      authService
        .login(this.user)
        .then(response => {
          if (response.status == 200) {
            this.$store.commit('SET_AUTH_TOKEN', response.data.token);
            this.$store.commit('SET_USER', response.data.user);
            this.$router.push('/');
          }
        })
        .catch(error => {
          const response = error.response;

          if (response.status === 401) {
            this.invalidCredentials = true;
          }
        });
    }
  }
};
</script>
<style>

.container {
  height: 100vh;
  display: grid;
  grid-template-columns:1fr;
  grid-template-rows: 1fr 1fr 1fr;
  grid-gap: 20px;
  align-items: stretch;
  grid-template-areas:
    "header "
    "content"
    "footer";

}

/*header {
  grid-area: header;
  background-color: rgba(20, 123, 219, 0.986);
  height: 125px;
}*/

content{
  grid-area: content;
}

/*footer{
  grid-area: footer;
  background-color: rgba(20, 123, 219, 0.986);
  height: 125px;
}*/


body {
  background: lightblue; 
  font-family: 'Noto Sans', sans-serif;
  background: url(https://igmcreativegroup.com/wp-content/uploads/2018/06/AdobeStock_104201889.jpeg) no-repeat center center fixed;
  /*background: url(https://c4.wallpaperflare.com/wallpaper/903/861/209/beer-drink-alcohol-wallpaper-preview.jpg) no-repeat center center fixed;*/
  /*background: url(https://c4.wallpaperflare.com/wallpaper/578/470/326/beer-splashes-alcohol-drinking-glass-wallpaper-preview.jpg) no-repeat center center fixed;*/
  /*background: url(https://c4.wallpaperflare.com/wallpaper/97/512/27/a-glass-of-beer-wallpaper-preview.jpg) no-repeat center center fixed;*/
  /*background: url(https://c4.wallpaperflare.com/wallpaper/240/999/697/futurama-cartoon-bender-the-simpsons-wallpaper-preview.jpg) no-repeat center center fixed;*/
  /*background: url(https://www.wvxu.org/sites/wvxu/files/201409/Beer.JPG) no-repeat center center fixed;*/

  background-size: cover;
  
}


.please-sign-in {
  color: white
}

.login-box {
  display: flex;
  justify-content: center;
  text-align: center;
  margin: 20px 0;
  padding: 10px;
}

.form-control {
  border-radius: 25px;
  font-size: 30px;
  padding: 10px;
  border:none;	
 outline:none;
}

.login-btn {	
 padding: 10px;
 margin: 10px;
 font-size: 20px;
 border-radius: 5px;
 background-color: rgb(247, 206, 71);
}

.white-txt {
  color: aliceblue;
  font-size: 20px;
}
</style>
