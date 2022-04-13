<template>
  <div class="hospitals body-content">
    <h1 class="title">Hospitales</h1>
    <p class="p-footer">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia debitis error nostrum minus corporis enim expedita dolorum quasi accusantium, suscipit cum voluptatibus deleniti, aliquam fugit iure neque recusandae incidunt eligendi?
      Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nemo, cupiditate quam dolores eum at inventore provident quo alias delectus totam architecto ipsam, natus, impedit magni sunt blanditiis corporis distinctio!
    </p>
  </div>
</template>
<script>
  import { mapState, mapActions } from 'vuex'
  export default {
    methods: {
      ...mapActions(['traerHospitales'])
    },
    mounted(){
      this.traerHospitales()
    }
  }
</script>
<style >

</style>
