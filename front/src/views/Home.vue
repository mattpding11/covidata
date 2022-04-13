<template>
  <div class="home body-content-google-maps">
    <h1 class="title">Busca Hospitales</h1>
    <google-map />
    <modals-container />
  </div>
</template>

<script>
import GoogleMap from "@/components/GoogleMap";

export default {
  components: {
    GoogleMap
  }
};
</script>

<style>
  

.body-content-google-maps{
  position: relative;
  z-index: 2;
  top: 40%;
  background-color: #ffffff ;
  padding-top: 5%;
  margin: 0px auto;
  padding: 2%;
  width: 80%;
  border: none;

    /*Sombra*/
      -webkit-box-shadow: 0px 0px 5px 0px rgba(158, 158, 158, 1);
  -moz-box-shadow: 0px 0px 5px 0px rgba(158, 158, 158, 1);
  box-shadow: 0px 0px 5px 0px rgba(158, 158, 158, 1);
  transition: 0.3s;

   /* Borde*/
  border-radius: 11px 11px 11px 11px;
  -moz-border-radius: 11px 11px 11px 11px;
  -webkit-border-radius: 11px 11px 11px 11px;
}

.body-content-google-maps:hover{
  transition: 0.3s;
  -webkit-box-shadow: 0px 4px 9px 7px rgba(158, 158, 158, 1);
  -moz-box-shadow: 0px 4px 9px 7px rgba(158, 158, 158, 1);
  box-shadow: 0px 4px 9px 7px rgba(158, 158, 158, 1);

}

</style>
