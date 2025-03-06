<script setup>
import { AppState } from '@/AppState.js';
import { cardService } from '@/services/CardsService.js';
import { onMounted } from 'vue';
import { Pop } from '@/utils/Pop.js';

onMounted(() => {
  getAllCards()
})

async function getAllCards() {
  try {
    await cardService.getAllCards()
  }
  catch (error) {
    Pop.error(error);
  }
}

</script>

<template>
  <H1>Hi</H1>
</template>


<style lang="scss" scoped></style>
