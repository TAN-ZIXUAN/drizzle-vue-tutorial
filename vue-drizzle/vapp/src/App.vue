<template>
  <div v-if="isDrizzleInitialized" id="app">
    <div>
      <div class="section">
        <h2>Show the Accounts</h2>
        <drizzle-account units="Ether" :precision="2" />
      </div>

    </div>
    <div class="section">
      <h2>Simple Storage</h2>
      <SimpleStorage />
    </div>

    <Toast/>

  </div>

  <div v-else>Loading...</div>
</template>

<script>
  import {mapGetters}  from 'vuex'
  import Toast from "./events/Toast";
  import SimpleStorage from "./SimpleStorage";


export default {
  name: 'app',
  components: {
     Toast,SimpleStorage,
  },
  computed: mapGetters('drizzle', ['isDrizzleInitialized'])
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
