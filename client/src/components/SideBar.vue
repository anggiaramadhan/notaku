<template>
    <div class="flex flex-row">
        <div class="w-[50px] border-r h-screen flex flex-col items-center gap-2 py-4">
            <div class="cursor-pointer">
                <IconNewNote />
            </div>
            <div class="cursor-pointer">
                <IconNewFolder />
            </div>
            <div class="cursor-pointer">
                <IconProfile />
            </div>
            <div class="cursor-pointer">
                <IconLogout />
            </div>
        </div>
        <div class="flex flex-col gap-y-8 p-4 w-[200px] border-r h-screen">
            <h1 class="text-xl font-bold uppercase">Notaku</h1>
            <main class="flex flex-col gap-y-4">
                <div class="flex items-center justify-between">
                    <div class="flex items-center gap-x-2 cursor-pointer hover:text-red-500">
                        <p>Notes</p>
                    </div>
                    <IconArrowRight class="cursor-pointer" />
                </div>
            </main>
        </div>
    </div>
</template>

<script setup lang="ts">
import IconArrowRight from '@/components/icons/IconArrowRight.vue'
import IconNewNote from '@/components/icons/IconNewNote.vue'
import IconNewFolder from '@/components/icons/IconNewFolder.vue'
import IconLogout from '@/components/icons/IconLogout.vue'
import IconProfile from '@/components/icons/IconProfile.vue'

</script>
