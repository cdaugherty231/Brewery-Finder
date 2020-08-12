<template>
  <b-container fluid id="login" class="text-center log-container">
    <content>
      <form class="form-signin" @submit.prevent="login">
        <!-- <h1 class="h3 mb-3 font-weight-normal please-sign-in login-box">Please Sign In</h1> -->
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
        <b-row>
          <b-col></b-col>
          <b-col>
            <p class="title">Login</p>
            <!-- <b-card bg-variant="dark" title="Login" text-variant="white" style="max-width: 20rem" class="mb-2"> -->
            <b-card-text>
              <input
                type="text"
                id="username"
                class="form-control"
                placeholder="Username"
                v-model="user.username"
                required
                autofocus
              />
            </b-card-text>

            <b-card-text>
              <input
                type="password"
                id="password"
                class="form-control"
                placeholder="Password"
                v-model="user.password"
                required
              />
            </b-card-text>
            <b-card-text class="accountLink">
              <router-link class="white-txt" :to="{ name: 'register' }">Need an account?</router-link>
            </b-card-text>

            <!-- <button class="login-btn" type="submit">Login</button> -->
            <b-button type="submit" size="lg" variant="primary">Login</b-button>

            <!-- </b-card> -->
          </b-col>
          <b-col></b-col>
        </b-row>
      </form>
    </content>
  </b-container>
</template>

<script>
import authService from "../services/AuthService";

export default {
  name: "login",
  components: {},
  data() {
    return {
      user: {
        username: "",
        password: "",
      },
      invalidCredentials: false,
    };
  },
  methods: {
    login() {
      authService
        .login(this.user)
        .then((response) => {
          if (response.status == 200) {
            this.$store.commit("SET_AUTH_TOKEN", response.data.token);
            this.$store.commit("SET_USER", response.data.user);
            this.$router.push("/");
          }
        })
        .catch((error) => {
          const response = error.response;

          if (response.status === 401) {
            this.invalidCredentials = true;
          }
        });
    },
  },
};
</script>
<style scoped>
.container {
  height: 100vh;
  display: grid;
  grid-template-columns: 1fr;
  grid-template-rows: 1fr 1fr 1fr;
  grid-gap: 20px;
  align-items: stretch;
  grid-template-areas:
    "header "
    "content"
    "footer";
}
content {
  grid-area: content;
}

body {
  background: lightblue;
  font-family: "Noto Sans", sans-serif;
  /*background: url(https://igmcreativegroup.com/wp-content/uploads/2018/06/AdobeStock_104201889.jpeg) no-repeat center center fixed;*/
  /*background: url(https://c4.wallpaperflare.com/wallpaper/903/861/209/beer-drink-alcohol-wallpaper-preview.jpg) no-repeat center center fixed;*/
  /*background: url(https://c4.wallpaperflare.com/wallpaper/578/470/326/beer-splashes-alcohol-drinking-glass-wallpaper-preview.jpg) no-repeat center center fixed;*/
  /* background: url(https://c4.wallpaperflare.com/wallpaper/97/512/27/a-glass-of-beer-wallpaper-preview.jpg) */
  /* no-repeat center center fixed; */
  /*background: url(https://c4.wallpaperflare.com/wallpaper/240/999/697/futurama-cartoon-bender-the-simpsons-wallpaper-preview.jpg) no-repeat center center fixed;*/
  /* background: url(https://www.wvxu.org/sites/wvxu/files/201409/Beer.JPG) no-repeat center center fixed; */
  /* background: url(C:/Users/Student/workspace/brewery-finder-capstone-java/frontend/src/img/brewery_artboard_color.jpg); */
  /* background: url(C:/Users/Student/workspace/brewery-finder-capstone-java/frontend/src/img/brewery_artboard_color_gray.jpg); */
  background: url(C:/Users/Student/workspace/brewery-finder-capstone-java/frontend/src/img/brewery_artboard_color_gray2.jpg);
  background-size: cover;
}
/*body {
  background: lightblue;
  font-family: "Noto Sans", sans-serif;
  background: url(https://www.wvxu.org/sites/wvxu/files/201409/Beer.JPG)
    no-repeat center center fixed;
}*/

.card {
  box-shadow: 0 15px 8px 5px rgba(0, 0, 0, 0.2);
  transition: 0.3s;
  height: 400px;
  background-color: blue;
  border-radius: 25px;
}
.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
}

.accountLink {
  margin-left: 15%;
  width: 70%;
  transition: 0.3s;
  border-radius: 25px;
  background-color: #fbb03b;
  font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
}

.please-sign-in {
  color: white;
}

.title {
  font-size: 30px;
  color: white;
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
  border: none;
  outline: none;
}

.login-btn {
  padding: auto;
  font-size: 20px;
  border-radius: 5px;
  background-color: rgb(233, 146, 15);
}

.white-txt {
  color: aliceblue;
  font-size: 20px;
}
</style>
