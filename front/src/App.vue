<template>
  <div id="app">
    <div id="nav">
      <nav-bar/>
    </div>
    <div id="container">
      <div id="container-background-primary" >  <router-view :key="$route.fullPath"/>
  </div>  
  <div id="container-background-secondary">  >
  </div>
    </div>
    <div id="footer">
      <Footer/>
    </div>
  </div>
</template>
<script>

import NavBar from '@/components/NavBar.vue'
import Footer from '@/components/Footer.vue'

export default {
  components: {
    NavBar,
    Footer
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

#nav{
  margin-bottom: 2%;
}

.container{
  height: 600px;
}

.p-footer{
  width: 50% ;
  margin: auto;
  letter-spacing: 2px;
  line-height: 50px;
}

img{
  width: 200px;
  float: left;
  padding: 0px;
}

p{
  color:#424242;
}

  .user-form input {
    display: block;
    margin: 0px auto;
  }

  input[type="email"],input[type="password"],input[type="text"],input[type="date"],input[type="number"]{
    outline: none;
    padding: 15px;  
    display: block;
    width: 80%;
    border-radius: 5px;
    border: 1px solid #eee;
    margin: 20px auto;
}

select{
  margin-top:22px;
   outline: none;
   display: inline-block;
    padding: 15px;  
    width: 80%;
    border-radius: 5px;
    border: 1px solid #eee;
    margin: 20px auto;
}



.p-button{
  margin: 0px auto;
  margin-top: 3%;
  margin-bottom: 3%;
  width: 50%;
}

input:-webkit-autofill,
input:-webkit-autofill:hover, 
input:-webkit-autofill:focus,
textarea:-webkit-autofill,
textarea:-webkit-autofill:hover,
textarea:-webkit-autofill:focus,
select:-webkit-autofill,
select:-webkit-autofill:hover,
select:-webkit-autofill:focus {
  -webkit-text-fill-color:#eaeaea;
  box-shadow: 0 0 0px 1000px  #eaeaea inset;
  transition: background-color 5000s ease-in-out 0s;
}


.body-content{
  position: relative;
  top: 40%;
  background-color: #ffffff ;
  padding-top: 5%;
  margin: 0px auto;
  padding: 2%;
  width: 60%;
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

.body-content:hover{
  transition: 0.3s;
  -webkit-box-shadow: 0px 4px 9px 7px rgba(158, 158, 158, 1);
  -moz-box-shadow: 0px 4px 9px 7px rgba(158, 158, 158, 1);
  box-shadow: 0px 4px 9px 7px rgba(158, 158, 158, 1);

}

#container-background-primary{
  width: 100%;
  height: 200px;
  border: none;
  background-color:#00c853ad ;
}

#container-background-secondary{
  width: 100%;
  height: 1000px;
  margin: 10px;
  background-color: #ffffff;
}

</style>
