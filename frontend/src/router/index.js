import Vue from 'vue'
import Router from 'vue-router'
import Home from '../views/Home.vue'
import Login from '../views/Login.vue'
import Logout from '../views/Logout.vue'
import Register from '../views/Register.vue'
import store from '../store/index'
import BreweryProfileDetailView from '../views/BreweryProfileDetailView.vue'
import BreweryProfileDetailViewEdit from '../views/BreweryProfileDetailViewEdit.vue'
import AddNewBeer from '../components/AddNewBeer.vue'
import BreweryUpdate from '../components/BreweryUpdate.vue'
import UserProfile from '../components/UserProfile.vue'
import About from '../views/About.vue'

Vue.use(Router)

/**
 * The Vue Router is used to "direct" the browser to render a specific view component
 * inside of App.vue depending on the URL.
 *
 * It also is used to detect whether or not a route requires the user to have first authenticated.
 * If the user has not yet authenticated (and needs to) they are redirected to /login
 * If they have (or don't need to) they're allowed to go about their way.
 */

const router = new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home,
      meta: {
        requiresAuth: true
      }
    },
    {
      path: '/login',
      name: 'login',
      component: Login,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: '/logout',
      name: 'logout',
      component: Logout,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: '/register',
      name: 'register',
      component: Register,
      meta: {
        requiresAuth: false
      }
    },

    {
      path: '/breweryProfile/:brewery_id',
      name: 'breweryProfileView',
      component: BreweryProfileDetailView,
      meta: {
        requiresAuth: false
      }
    },

    {
      path: '/breweryProfile/:brewery_id',
      name: 'breweryProfileViewEdit',
      component: BreweryProfileDetailViewEdit,
      meta: {
        requiresAuth: false
      }
    },

    {
      path: '/addBeer',
      name: 'addNewBeer',
      component: AddNewBeer,
      meta: {
        requiresAuth: true
      }
    },

    {
      path: '/updateBrewery',
      name: 'updateBrewery',
      component: BreweryUpdate,
      meta: {
        requiresAuth: true
      }
    },

    {
      path: '/userProfile/:username',
      name: 'userProfile',
      component: UserProfile,
      meta: {
        requiresAuth: true
      }
    },

    {
    path: '/about',
      name: 'about',
      component: About,
      meta: {
        requiresAuth: false
      }
    }
  ]
})

router.beforeEach((to, from, next) => {
  // Determine if the route requires Authentication
  const requiresAuth = to.matched.some(x => x.meta.requiresAuth);

  // If it does and they are not logged in, send the user to "/login"
  if (requiresAuth && store.state.token === '') {
    next('/login');
  } else {
    // Else let them go to their next destination
    next();
  }
});

export default router;
