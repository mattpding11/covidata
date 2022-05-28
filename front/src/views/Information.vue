<template>
  <div class="body-content">
    <h2 class="title">{{this.hospital.nombre}}</h2>
    <br />
    <br />

    <div class="img-info">
      <img :src="hospital.imagen" width="100%" alt="">
    </div>
    <br />
    <div class="row">
      <div class="col-md-12 mb-3">
        <label for="disponibilidad">Disponibilidad</label>
        <div class="progress" id="disponibilidad">
          <div
            class="progress-bar"
            role="progressbar"
            :style="{ width: disponibilidad + '%' }"
            aria-valuenow="0"
            aria-valuemin="0"
            aria-valuemax="100"
          >{{textoDisponibilidad}}</div>
        </div>
      </div>
    </div>
    <br />
    <br />
    <div class="info-data">
      <h6>Dirección: <strong>{{this.hospital.direccion}}</strong> </h6> 
      <h6>Telefono: <strong>{{this.hospital.telefono}}</strong></h6>
      <h6>Cantidad de médicos: <strong>{{this.hospital.cantidadDoctores}}</strong></h6>
      <h6>Médicos disponibles: <strong>{{this.hospital.doctoresLibres}}</strong></h6>
      <h6>Cantidad de camas: <strong>{{this.hospital.cantidadCamas}}</strong></h6>
      <h6>Camas disponibles: <strong>{{this.hospital.camasLibres}}</strong></h6>
    </div>
  </div>
</template>
<script>
import { mapActions, mapState } from "vuex";
import axios from 'axios';

export default {
  data() {
    return {
      disponibilidad: 20,
      textoDisponibilidad: "Baja",
      hospital: {},
    };
  },
  beforeMount() {
    this.traerHospitales();
    this.disponibilidad =
      (100 *
        ((this.hospital.cantidadCamas + this.hospital.cantidadDoctores) / 2)) /
      (this.hospital.camasLibres + this.hospital.doctoresLibres) /
      2;
    if (this.disponibilidad <= 30) {
      this.textoDisponibilidad = "Alta";
    } else if (this.disponibilidad > 30 && this.disponibilidad <= 60) {
      this.textoDisponibilidad = "Media";
    } else {
      this.textoDisponibilidad = "Baja";
    }
  },
  computed: {
  },
  methods: {
     traerHospitales(){
        axios.get('http://127.0.0.1:8000/traerHospitales').then((response)=>{
          this.hospital = response.data[0];
          console.log("hos",this.hospital)

        }).catch((error) => {
          console.log(error)
          })
      }
  }
};
</script>

<style>
#caja {
  text-align: initial;
}

.img-info img {
  border: none;
  width: 100%;
  height: 300px;
  margin: 0px auto;
  margin-bottom: 3%;
}

.info-data h6 {
  margin-right: 5%;
  margin-bottom: 5%;
  display: inline-block;
}
</style>

