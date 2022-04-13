<template>
  <div id="nav">

    <nav id="nav-bar">
 
   <router-link class="d-none d-md-block" :to="{name: 'home'}">
    <img id="logo" src="../assets/imagotipo.png" alt="Logo">
   </router-link>

      <div class="nav-bar-item">
        <router-link :to="{ name: 'home' }">
          <i class="material-icons">home</i>
          Inicio
        </router-link>
      </div>

      <div class="nav-bar-item">
        <router-link :to="{ name: 'information' }">
          <i class="material-icons iconox">info</i>
          Información
        </router-link>
      </div>
      
      <div class="nav-bar-item">
        <router-link :to="{ name: 'users' }">
          <i class="material-icons">account_circle</i>
          Usuarios
        </router-link>
      </div>

      <div class="nav-bar-item">
        <router-link :to="{ name: 'about' }">
          <i class="material-icons">contact_support</i>
          Nosotros
        </router-link>
      </div>

      <p></p>
    </nav>
    <hr class="line-navbar">
    <!-- <i class="material-icons md-48" style="font-size:50px;color:blue">alarm</i> -->
  </div>
</template>
<script>
  export default {
  }
</script>

<style>

  #nav {
    margin-bottom: 6%;
  }

  #nav a {
    text-decoration-line: none;
    font-weight: bold;
    color: #616161;
    margin: 2%;
    text-align: center;
    text-align: center;
  }

  #nav-bar>div {
    display: inline-block;
    padding: 2%;
    cursor: pointer;
    text-align: center;
  }

  #nav a.router-link-exact-active, .nav-bar-item  {
    color: #00c853;
  }

  #nav a:hover{
    color: #00c85375;
  }

  i {
    padding-right: 5%;
  }

  .line-navbar {
    width: 100%;
    margin: -2%;
  }

#logo{
  position: absolute;
  top:-9%;
  left: 3%;
  cursor: pointer;
  }

</style>
