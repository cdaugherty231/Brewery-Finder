<template>
  <div class="home">
    <h1>Home</h1>
    <p>You must be authenticated to see this.</p>
    <admin-look-up-user v-if="$store.state.user.authorities.find(auth => auth.name == 'ROLE_ADMIN')"></admin-look-up-user>
  </div>
</template>

<script>
import AdminLookUpUser from "@/components/AdminLookUpUser.vue";

export default {
  name: 'home',
  data() {
    return {
      user: this.$store.state.user
    }
  },
  components: {
    AdminLookUpUser
  }
};
</script>
