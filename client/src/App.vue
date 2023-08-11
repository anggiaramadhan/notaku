<script setup lang="ts">
import { onMounted } from 'vue';
import { useUserStore } from './stores/user';

const store = useUserStore()

onMounted(() => {
    const res = localStorage.getItem('user')
    if (res) {
        const data = JSON.parse(res)
        store.setToken(data.token)
        store.setEmail(data.email)
    }
})
</script>

<template>
    <RouterView />
</template>

<style scoped></style>
