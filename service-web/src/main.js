import { createApp  } from 'vue'
import App from './App.vue'
import '@/styles/index.css'
import installElementPlus from './plugins/element.js'
import installVueRouter from './plugins/router.js'


const app = createApp(App)
installElementPlus(app)
installVueRouter(app)
app.mount('#app')
