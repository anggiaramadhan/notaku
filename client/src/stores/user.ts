import { ref } from 'vue'
import { defineStore } from 'pinia'

export const useUserStore = defineStore('user', () => {
  const email = ref<string>('')
  const token = ref<string>('')

  function setEmail(value: string) {
    email.value = value
  }

  function setToken(value: string) {
    token.value = value
  }

  return { email, token, setEmail, setToken }
})
