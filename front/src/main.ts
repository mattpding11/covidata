import Vue from 'vue'
import upperFirst from 'lodash/upperFirst'
import camelCase from 'lodash/camelCase'
import App from './App.vue'
import router from './router'
import store from './store'
import * as VueGoogeleMaps from 'vue2-google-maps'
import 'bootstrap/dist/css/bootstrap.min.css';
import VModal from 'vue-js-modal'

Vue.config.productionTip = false

const requireComponent = require.context(
  './components',
  false,
  /Base[A-Z]\w+\.(vue|js)$/
)

requireComponent.keys().forEach(fileName => {
  const componentConfig = requireComponent(fileName)

  const componentName = upperFirst(
    camelCase(fileName.replace(/^\.\/(.*)\.\w+$/, '$1'))
  )

  Vue.component(componentName, componentConfig.default || componentConfig)
})

Vue.use(VueGoogeleMaps, {
  load: {
    key: "AIzaSyAJU3unZqSS94USE9UQvt-uwMRjVflfdBc",
    libraries: "places" // necessary for places input
  }
});

Vue.use(VModal, { dynamic: true, dynamicDefaults: { clickToClose: false } })

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
