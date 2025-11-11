import axios from "axios"
const request = axios.create({
    baseURL:process.env.VUE_APP_BASEURL,
    timeout:30000
})