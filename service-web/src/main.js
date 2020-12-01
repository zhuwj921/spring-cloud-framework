import { createApp } from 'vue'
import App from './App.vue'
import installElementPlus from './plugins/element.js'

const app = createApp(App)
installElementPlus(app)
app.mount('#app')