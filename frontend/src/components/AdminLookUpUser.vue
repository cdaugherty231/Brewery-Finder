<template>
<div>
  <form class="findUser">
      <input type="text" name="username" placeholder="Username">
      <button>Enter</button>
  </form>
  </div>
</template>

<script>
import UserService from "@/services/UserService.js";

export default {
    methods: {
        getUserByUsername(username) {
            UserService.getUserByUsername(username);
        }
    }
}
</script>

<style>
.findUser {
    margin: 10px;
    font-size: 1rem;
}

</style>