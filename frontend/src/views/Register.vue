<template>
  <div id="register" class="text-center container">
    <content>
    <form class="form-register" @submit.prevent="register">
      <h1 class="h3 mb-3 font-weight-normal">Create Account</h1>
      <div class="alert alert-danger register-box" role="alert" v-if="registrationErrors">
        {{ registrationErrorMsg }}
      </div>
      <div class="register-box">
      <input type="text" id="username" class="form-control" placeholder="Username"
          v-model="user.username" required autofocus
      /></div>
      <div class="register-box">
      <input type="password" id="password" class="form-control" placeholder="Password" 
          v-model="user.password" required
      />
      </div>

      <div class="register-box">
      <input type="password" id="confirmPassword" class="form-control" placeholder="Confirm Password" 
          v-model="user.confirmPassword" required
      /></div>

      <div class="check-box">
      <input type="checkbox" id="Brewer Check" class="form-control check" v-model="user.role" 
          true-value="Brewer" false-value=""
      />
      <label class="white-txt" for="Brewer Check">Check if you are a brewer?  </label> 
      </div>
      <div class="register-box">
      <router-link class="white-txt" :to="{ name: 'login' }">Have an account?</router-link>
      </div>
      <div class="register-box">
      <button class="btn btn-lg btn-primary btn-block" type="submit">
        Create Account
      </button>
      </div>
    </form>
    </content>
  </div>
</template>

<script>
import authService from '../services/AuthService';

export default {
  name: 'register',
  data() {
    return {
      user: {
        username: '',
        password: '',
        confirmPassword: '',
        role: 'User',
      },
      registrationErrors: false,
      registrationErrorMsg: 'There were problems registering this user.',
    };
  },
  methods: {
    register() {
      if (this.user.password != this.user.confirmPassword) {
        this.registrationErrors = true;
        this.registrationErrorMsg = 'Password & Confirm Password do not match.';
      } else {
        authService
          .register(this.user)
          .then((response) => {
            if (response.status == 201) {
              this.$router.push({
                path: '/login',
                query: { registration: 'success' },
              });
            }
          })
          .catch((error) => {
            const response = error.response;
            this.registrationErrors = true;
            if (response.status === 400) {
              this.registrationErrorMsg = 'Bad Request: Validation Errors';
            }
          });
      }
    },
    clearErrors() {
      this.registrationErrors = false;
      this.registrationErrorMsg = 'There were problems registering this user.';
    },
  },
};
</script>

<style scoped>
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

content {
  grid-area: content;
}

#register {
   background: lightblue; 
  font-family: 'Noto Sans', sans-serif;
   background: 
      linear-gradient(
      rgba(27, 27, 26, 0.45), 
      rgba(39, 39, 36, 0.45)
    ), url(https://c4.wallpaperflare.com/wallpaper/97/512/27/a-glass-of-beer-wallpaper-preview.jpg) no-repeat center center fixed;
  background-size: cover;
  height: 100%;
  text-indent: -9999px;
    height: 100vh;
  width: 100vw;

}

.register-box, .h3 {
  display: flex;
  justify-content: center;
  text-align: center;
  margin: 20px 0;
  padding: 10px;
}

.check {
  margin-right: 10px;
  width: 20px;
  height: 20px;
}

.check-box {
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

.btn {	
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

.h3 {
  color: aliceblue;
  font-size: 40px;
}

</style>
