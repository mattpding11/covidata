<template>
  <div class="body-content">
    <h1 class="title">Usuarios</h1>

    <form>
   
      <p id="hospital">
     <select v-model="hospitalId">
        <option v-for="(hospital) in hospitales" :key="hospital.id"  >{{ hospital.nombre }}</option>
      </select> 
      </p>
  
      <p>
        <input type="text" v-model="firstName" placeholder="Nombre" required>
      </p>

      <p>
        <input type="text" v-model="lastName" placeholder="Apellido" required>
      </p>

      <p class="pointer">
        <input list="datalist" type="text"  v-model="documentType"  placeholder="Documento" required>
        <datalist id="datalist" >
          <option value="CC">Cédula de ciudadanía</option>
          <option value="CE">Cédula de extranjería</option>
          <option value="TI">Tarjeta de identidad.</option>
        </datalist>
      </p>

      <p>
        <input type="text" v-model="document"  placeholder="Nro de Documento" required>
      </p>

      <p>
        <input type="number" v-model="age" placeholder="Edad" min="0" max="120" required>
      </p>

      <p>
        <input type="email" v-model="email" placeholder="Correo electronico" required>
      </p>

      <p>
        <input type="text" v-model="address" placeholder="Direccion" required>
      </p>

      <p>
        <input type="text" v-model="cellphoneNumber" placeholder="Celular" required>
      </p>
<!--
      <p class="pointer">
       <input class="hospitales" list="inputGroupSelect02" v-model="hospitalId">
        <datalist id="inputGroupSelect02">
        <option v-for="(hospital) in Hospitales" :key="hospital.id" v-bind:value="hospital.nombre" ></option>
        </datalist>
      </p> 
-->
      <p class="pointer">
        <label ><em>Sexo </em> </label><br>
        <input id="female" value="F" type="radio" v-model="gender" name="gender">
        <label for="female" >Femenino</label><br>
        <input id="male" value="M" type="radio"  v-model="gender" name="gender">
        <label for="male" >Maculino</label>
      </p>

      <p class="pointer">
         <label> <em>Sintomas</em> </label><br>
        <input id="headache" type="checkbox" v-model="headache">
          <label for="headache">Dolor de cabeza</label>

          <input id="flu" type="checkbox" v-model="flu">
          <label for="flu" >Gripa</label>

          <input id="phlegm" type="checkbox" v-model="phlegm">
          <label for="phlegm" >Flema</label>

          <input id="cold" type="checkbox" v-model="cold">
          <label for="cold" >Resfriado</label>

          <input id="fever" type="checkbox" v-model="fever">
          <label for="fever" >Fiebre</label>

          <input id="bodyPain" type="checkbox" v-model="bodyPain">
          <label for="bodyPain" >Dolor en el cuerpo</label>
          <br>
      </p>

      <p class="p-button">
       <button  type="button"  @click="crearUsuarios"  class="btn btn-success btn-block">Enviar</button>
      </p>

    </form>
  </div>
</template>

<script >
import { mapActions, mapState } from 'vuex';
import axios from 'axios';

export default {
  data()
  {
    return {
      hospitalId:1,
      firstName: "",
      lastName: "",
      documentType:"",
      document: "",
      email: "",
      age :"",
      address: "",
      cellphoneNumber: "",
      headache:  false,
      flu:  false,
      phlegm:  false,
      cold:  false,
      fever:  false,
      bodyPain:  false,
      gender: "",
      hospitales: [],
    }
  },
  mounted(){
    this.traerHospitales();
  },
  methods: {
      crearUsuarios() {
      axios.post  ('http://127.0.0.1:8000/usuario', {
        firstName: this.firstName,
        lastName: this.lastName,
        documentType: this.documentType,
        document: this.document, 
        age: this.age, email: this.email, 
        address: this.address,
        cellphoneNumber: this.cellphoneNumber,
        gender: this.gender, 
        flu: this.flu,
        phlegm: this.phlegm, 
        cold: this.cold,
        fever: this.fever,
        bodyPain: this.bodyPain,
        headache: this.headache, 
        hospitalId: this.hospitalId })
        .then((response) => {
          alert('Se ha guardado correctamente');
          location.reload();
        })
        .catch((error) => {
        console.log(error);
        alert('No es posible guardar la categoria en el servidor, verifique que esten completos los campos');
        });
    },
    traerHospitales(){
        axios.get('http://127.0.0.1:8000/traerHospitales').then((response)=>{
          console.log(response.data)
          this.hospitales = response.data;
        }).catch((error) => {
          console.log(error)
          })
      }
  }
}
</script>

<style>

label{
  padding: 1%;
}

.pointer label, .pointer input{
  cursor: pointer;
}

p[id="hospital"] {
  margin-top: 60px;
  text-align: center;
}

</style>