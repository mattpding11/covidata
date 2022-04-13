import axios, { AxiosRequestConfig, AxiosResponse } from 'axios'

const apiClient = axios.create({
  baseURL: `http://localhost:8000`,
  withCredentials: false, // This is the default
  headers: {
    Accept: 'application/json',
    'Content-Type': 'application/json'
  }
})

export default{
 traerHospitales() {
  console.log("melo")
  console.log("traerhospitlaes",apiClient.get('/traerHospitales'))
    return apiClient.get('/traerHospitales') 
  }
,
    agregarHospital(payload:any) {
      console.log("melo")
          console.log(typeof(apiClient.post('/agregarHospital', payload)))
    return apiClient.post('/agregarHospital', payload)
  },
   crearUsuarios(payload:any) {
    console.log("melo")
    console.log(typeof(apiClient.post('/crearUsuarios', payload)))
    return apiClient.post('/crearUsuarios', payload)
  }

}