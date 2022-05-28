import Vue from 'vue'
import Vuex from 'vuex'
import EventService from '@/services/EventService'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    Hospitales: [],
    Hospital: {}
  },
  mutations: {
    UPDATE_HOSPITALES(state, events) {
      state.Hospitales = events;
    },
    SETTEAR_HOSPITAL(state, events) {
      state.Hospital = events;
    }
  },
  actions: {
    traerHospitales({ commit }) {
      return EventService.traerHospitales()
        .then((response: { data: any }) => {
          commit('UPDATE_HOSPITALES', response.data)
        })
        .catch((error: any) => {
          console.log(error);
        })

    },
    agregarHospital({ commit }, payload) {
      return EventService.agregarHospital(payload)
      .then((response : any) => {
        console.log(response);
      })
      .catch((error: any) => {
        console.log(error);
      })
    },
    settearHospital({ commit }, payload) {
      commit('SETTEAR_HOSPITAL', payload)
    },
    crearUsuarios({ commit }, payload) {
    
      return EventService.crearUsuarios(payload)
      .then((response: any) => {
        console.log(response);
      })
      .catch((error: any) => {
        console.log(error);
      })
    }
  },
  modules: {
  }
})
