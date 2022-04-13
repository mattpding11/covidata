<template>
  <div class="modal-content">
    <!--Header-->
    <div class="modal-header">
      <p class="heading lead">{{ place.nombre }}</p>

      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true" class="white-text" @click="$emit('close')">×</span>
      </button>
    </div>  

    <!--Body-->
    <div class="modal-body">
      <div class="text-center">
        <i class="far fa-file-alt fa-4x mb-3 animated rotateIn"></i>
        <p>
            <img :src="place.imagen" alt="">
        </p>
      </div>
      <hr/>
      <!--Basic textarea-->
      <div class="row">
          <div class="col-md-6 mb-3">
            <label for="cantidadCamas">Numero de camas</label>
            <input type="text" class="form-control" disabled id="cantidadCamas" :value="place.cantidadCamas">
          </div>
          <div class="col-md-6 mb-3">
            <label for="camasLibres">Camas libres</label>
            <input type="text" class="form-control" disabled id="camasLibres" :value="place.camasLibres">
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="cantidadMedicos">Cantidad medicos</label>
            <input type="text" class="form-control" disabled id="cantidadMedicos" :value="place.cantidadDoctores">
          </div>
          <div class="col-md-6 mb-3">
            <label for="medicosLibres">Medicos libres</label>
            <input type="text" class="form-control" disabled id="medicosLibres" :value="place.doctoresLibres">
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 mb-3">
            <label for="disponibilidad">Disponibilidad</label>
            <div class="progress" id="disponibilidad">
                <div class="progress-bar" role="progressbar" :style="{ width: disponibilidad + '%' }" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">{{textoDisponibilidad}}</div>
            </div>
          </div>
        </div>
        
    </div>

    <!--Footer-->
    <div class="modal-footer justify-content-center">
      <button class="btn btn-primary" @click="masInformacion">Más</button>
      <button type="button" class="btn btn-danger" @click="$emit('close')">Cerrar</button>
    </div>
  </div>
</template>

<script>
import { mapActions, mapState } from 'vuex';
export default {
  data(){
    return {
        disponibilidad: 20,
        textoDisponibilidad: "Baja"
      }
  },
  mounted() {
      this.disponibilidad = 100 * ((this.place.cantidadCamas + this.place.cantidadDoctores)/2) / (this.place.camasLibres + this.place.doctoresLibres)/2;
      if(this.disponibilidad <= 30)
      {
        this.textoDisponibilidad = "Alta"
      }
      else if(this.disponibilidad > 30 && this.disponibilidad <= 60)
      {
        this.textoDisponibilidad = "Media"
      }
      else
      {
        this.textoDisponibilidad = "Baja"
      }
  },
  methods: {
    ...mapActions(['settearHospital']),
    masInformacion(){
      this.settearHospital(this.place)
      this.$router.push({
        name: "information"});
    }
  },
  computed:{
    ...mapState(['Hospital']),
  },
  props: {
    place: {
      type: Object,
      required: true
    }
  }
};
</script>

<style lang="sass" scoped>

</style>