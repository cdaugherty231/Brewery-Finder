<template>
  <b-container id="register" class="text-center container" fluid="xl">
    <header></header>
      <form class="form-register" @submit.prevent="register">
        
        <div
          class="alert alert-danger register-box"
          role="alert"
          v-if="registrationErrors"
        >{{ registrationErrorMsg }}</div>

        <b-row id="register-box">
          <b-col></b-col>
          <b-col>
            <h1 class="h3 mb-3 font-weight-normal">Create Account</h1>
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

            <b-card-text>
              <input
                type="password"
                id="confirmPassword"
                class="form-control"
                placeholder="Confirm Password"
                v-model="user.confirmPassword"
                required
              />
            </b-card-text>

            <b-card-text>
              <b-form-checkbox
                id="checkbox-1"
                v-model="user.role"
                name="checkbox-1"
                size="lg"
                class="white-txt"
                value="Brewer"
                unchecked-value
              >Check if you are a brewery?</b-form-checkbox>
            </b-card-text>
            <!-- <div class="check-box">
            <input type="checkbox" id="Brewer Check" class="form-control check" v-model="user.role" 
                true-value="Brewer" false-value=""
            />
            <label class="white-txt" for="Brewer Check">Check if you are a brewer?  </label> 
                  </div>-->

            <b-card-text class="hasAccountAlready">
              <router-link class="white-txt" :to="{ name: 'login' }">Have an account?</router-link>
            </b-card-text>

            <!-- <button class="btn btn-lg btn-primary btn-block" type="submit"> Create Account</button> -->
            <b-button type="submit" size="lg" variant="primary">Register</b-button>

          </b-col>
          <b-col></b-col>
        </b-row>
      </form>

  </b-container>
</template>

<script>
import authService from "../services/AuthService";

export default {
  name: "register",
  data() {
    return {
      user: {
        username: "",
        password: "",
        confirmPassword: "",
        role: "User",
      },
      registrationErrors: false,
      registrationErrorMsg: "There were problems registering this user.",
    };
  },
  methods: {
    register() {
      if (this.user.password != this.user.confirmPassword) {
        this.registrationErrors = true;
        this.registrationErrorMsg = "Password & Confirm Password do not match.";
      } else {
        authService
          .register(this.user)
          .then((response) => {
            if (response.status == 201) {
              this.$router.push({
                path: "/login",
                query: { registration: "success" },
              });
            }
          })
          .catch((error) => {
            const response = error.response;
            this.registrationErrors = true;
            if (response.status === 400) {
              this.registrationErrorMsg = "Bad Request: Validation Errors";
            }
          });
      }
    },
    clearErrors() {
      this.registrationErrors = false;
      this.registrationErrorMsg = "There were problems registering this user.";
    },
  },
};
</script>

<style scoped>
/*.container {
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

 #register {
  font-family: 'Noto Sans', sans-serif;
   background: 
      linear-gradient(
      rgba(92, 55, 55, 0.45), 
      rgba(19, 19, 18, 0.45)
    ),  url(https://www.wvxu.Student/sites/wvxu/files/201409/Beer.JPG) repeat center center fixed;
  height: 100vh;
  width: 100%;

} */

body {
    background: url('../img/brewery_artboard_color.jpg'); 
    background-size: cover;
}

#register-box {
  padding: 5% 0 0 0;
}


.hasAccountAlready {
  margin-left: 15%;
  height: 7%;
  width: 70%;
  transition: 0.3s;
  border-radius: 25px;
  background-color: #fbb03b;
  font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
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
  border: none;
  outline: none;
}

/* .btn {
  padding: 10px;
  margin: 10px;
  font-size: 20px;
  border-radius: 5px;
  background-color: rgb(247, 206, 71);
} */

.white-txt {
  color: aliceblue;
  font-size: 20px;
}

.gray-txt {
  color: gray;
  font-size: 20px;
}

.h3 {
  color: aliceblue;
  font-size: 40px;
}
</style>
