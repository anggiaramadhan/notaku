import { ref, reactive } from 'vue'
import { defineStore } from 'pinia'

export const useFolderStore = defineStore('folder', () => {
  const folderId = ref<number>(0)
  const file = reactive({
    id: 0,
    name: ''
  })

  return { folderId, file }
})
