<script setup>

import { ref, onMounted } from 'vue';
import {apiProducts} from './services/neunapp.js';
import productsComponents from './components/products.vue';

const products = ref({})

onMounted(async ()=>{
  loadProdcuts()
})

async function loadProdcuts(){
  
  try {
    let response = await apiProducts()
    if(response.status == 200){
      console.log(response.data)
      products.value=response.data
    }
  } catch (error) {
    console.log(error);
  }
}

</script>

<template>
  <productsComponents :products2 ="products.results"></productsComponents>
  
</template>

<style scoped>

</style>