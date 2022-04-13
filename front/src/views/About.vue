<template>
  <div class="about body-content">
    <h1 class="title">Sobre Nosotros</h1>  

  <div class="perfil">
    <img class="avatar" src="../assets/mateo.jpg" alt="avatar-mateo">
    <div class="perfil-info"><h3>Mateo Peñaranda <span class="programa">Ing. Sistemas</span> </h3></div>
    
  </div>

   <div class="perfil">
     <img class="avatar" src="../assets/jose.jpg" alt="avatar-jose">
      <div class="perfil-info"><h3>Jose David <span class="programa">Tec. Sistemas</span></h3></div>
  </div>


  </div>
</template>

<script>
  export default {
  }
</script>

<style>

.avatar{
  border-radius: 100%;
  width: 150px;
  margin-right: 3%;
  opacity: 70%;
}
.perfil{
display: inline-block;
margin: 0px left;
margin-top: 7%;
width: 100%;
margin-bottom: 5%;
text-align: left;
}

.perfil-info{
  width: 55%;
    margin-top: 5%;
    text-align: left;
    color: #424242;
}

.programa{
      color: #616161;
      font-size: smaller;
      display: block;
}

</style>