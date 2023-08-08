<script setup lang="ts">
</script>

<template>
    <main class="py-8 flex flex-row h-screen">
        <section class="w-2/4 flex flex-row flex-wrap">
            <h1 class="text-2xl font-bold uppercase grow-0 shrink w-full px-64">Notaku</h1>
            <div class="flex flex-col h-full grow shrink justify-center items-center px-64">
                <div class="py-8 input-group">
                    <h2 class="font-bold text-xl">Create an account</h2>
                    <p class="font-thin">Let's get started create your free account</p>
                </div>
                <div class="input-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" class="input-item" placeholder="enter your full name" />
                </div>
                <div class="input-group">
                    <label for="name">Email</label>
                    <input type="text" id="name" name="name" class="input-item" placeholder="enter your email" />
                </div>
                <div class="input-group">
                    <label for="name">Password</label>
                    <input type="password" id="name" name="name" class="input-item" placeholder="enter your password" />
                </div>
                <div class="input-group py-8 gap-y-4">
                    <button class="border text-white bg-black rounded-3xl p-2 hover:bg-gray-600" type="button">Create
                        account</button>
                    <button class="border rounded-3xl p-2 hover:bg-gray-50 flex justify-center items-center" type="button">
                        <img alt="Vue logo" class="logo" src="@/assets/google.svg" width="24" height="24" />
                        Sign up with google
                    </button>
                </div>
            </div>
        </section>
        <section class="bg-[url('/src/assets/cover.png')] w-2/4 h-full"></section>
    </main>
</template>
