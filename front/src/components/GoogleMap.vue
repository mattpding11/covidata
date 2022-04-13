<template>
  <div>
    <div>
      <p>Busca los hospitales mas <strong>cercanos</strong>  y menos <strong>poblados</strong> .</p>
      <label>
        <gmap-autocomplete
          @place_changed="setPlace">
        </gmap-autocomplete>
        <button class="btn-primary btn-md" @click="addMarker">Add</button>
      </label>
      <br/>
    
    </div>
    <br>
    <gmap-map
      :center="center"
      :zoom="12"
      class="map"
    >
      <gmap-marker
        :key="index"
        v-for="(m, index) in markers"
        :position="m.position"
        @click="show(m.position)"
      ></gmap-marker>
    </gmap-map>
  </div>
</template>

<script>
import ModalInformation from "@/components/ModalInformation.vue";
import { mapActions, mapState } from 'vuex';
export default {
  
  data() {
    return {
      center: { lat: 6.2768442, lng: -75.57970399999999},
      markers: [],
      places: [],
      currentPlace: null
    }
  },
  computed:{
    ...mapState(['Hospitales']),
  },
  mounted() {
    this.geolocate();
    this.traerHospitales();
    this.Hospitales.forEach(hospital => this.markers.push({ position: hospital }));
  },
  methods: {
    ...mapActions(['agregarHospital','traerHospitales']),

    setPlace(place) {
      this.currentPlace = place;
    },
    addMarker() {
      if (this.currentPlace) {
        const marker = {
          lat: this.currentPlace.geometry.location.lat(),
          lng: this.currentPlace.geometry.location.lng(),
          nombre: this.currentPlace.name,
          direccion: this.currentPlace.formatted_address,
          telefono: this.currentPlace.international_phone_number, 
          imagen:(this.currentPlace.photos == undefined)? "" : this.currentPlace.photos[0].getUrl({'maxWidth': 100, 'maxHeight': 100}) ,
          camasLibres: 123,
          cantidadCamas: 200,
          cantidadDoctores: 65,
          doctoresLibres: 21
        }
        this.markers.push({ position: marker });
        this.places.push(this.currentPlace);
        this.center = marker;
        this.currentPlace = null;
        this.agregarHospital(marker);
      }
    },
    geolocate: function() {
      navigator.geolocation.getCurrentPosition(position => {
        this.center = {
          lat: position.coords.latitude,
          lng: position.coords.longitude
        }
      })
    },
    show(place) {
      this.$modal.show(
        ModalInformation,
        {
          place
        }, 
        {
          height: 'auto',
          width: '50%'
        }
      )
    }
  }
};
</script>

<style>

.map{
  width:90%; 
   height: 700px;
    margin: 0px auto;
      border: none;
    /*Sombra*/
      -webkit-box-shadow: 0px 0px 5px 0px rgba(158, 158, 158, 1);
  -moz-box-shadow: 0px 0px 5px 0px rgba(158, 158, 158, 1);
  box-shadow: 0px 0px 5px 0px rgba(158, 158, 158, 1);
  transition: 0.3s;
  }



/*}
  Borde
  border-radius: 11px 11px 11px 11px;
  -moz-border-radius: 11px 11px 11px 11px;
  -webkit-border-radius: 11px 11px 11px 11px;
  border: 0px solid #000000;
 */


</style>