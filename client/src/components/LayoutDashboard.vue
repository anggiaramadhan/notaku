<template>
    <div class="flex gap-x-4">
        <SideBar></SideBar>
        <main class="p-4 flex-grow">
            <slot></slot>
        </main>
    </div>
</template>

<script setup lang="ts">
import SideBar from '@/components/SideBar.vue' 
</script>
