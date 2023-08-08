<template>
    <main class="py-8 flex flex-row h-screen">
        <section class="w-2/4 flex flex-row flex-wrap">
            <h1 class="text-2xl font-bold uppercase grow-0 shrink w-full xl:px-64 lg:px-32">Notaku</h1>
            <form @submit.prevent="onLogin"
                class="flex flex-col h-full grow shrink justify-center items-center xl:px-64 lg:px-32">
                <div class="py-8 input-group">
                    <h2 class="font-bold text-xl">Login account</h2>
                    <p class="font-thin">Let's get started create your note with markdown</p>
                </div>
                <div class="input-group">
                    <label for="email-form">Email</label>
                    <input :class="{ 'border-red-500': !isValid.email }" v-model="email" type="text" id="email-form"
                        name="email" class="input-item" placeholder="enter your email" />
                    <p v-if="!isValid.email" class="text-xs text-red-500">email did not found or valid</p>
                </div>
                <div class="input-group">
                    <label for="password-form">Password</label>
                    <input :class="{ 'border-red-500': !isValid.password }" v-model="password" type="password"
                        id="password-form" name="password" class="input-item" placeholder="enter your password" />
                    <p v-if="!isValid.password" class="text-xs text-red-500">password did not match and must have 1 capital
                    </p>
                </div>
                <div class="input-group py-8 gap-y-4">
                    <button class="border text-white bg-black rounded-3xl p-2 hover:bg-gray-600"
                        type="submit">Login</button>
                </div>
            </form>
        </section>
        <section class="bg-[url('/src/assets/cover.png')] w-2/4 h-full"></section>
    </main>
</template>

<script setup lang="ts">
import { ref, reactive, inject } from 'vue';
import api from '@/lib/api'

const axios: any = inject('axios')

interface ErrorField {
    email: boolean;
    password: boolean;
}

const email = ref('')
const password = ref('')
const isValid: ErrorField = reactive({ email: true, password: true })

async function onLogin() {
    onValidate()
    const data = await axios.post(api.loginApi)
}

function onValidate() {
    const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    const emailTest = emailPattern.test(email.value)
    let passwordTest = true
    if (password.value.length < 5) passwordTest = false
    passwordTest = /[A-Z]/.test(password.value)

    isValid.email = emailTest
    isValid.password = passwordTest
}
</script>

