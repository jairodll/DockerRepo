import axios from "axios";

var instance = axios.create({
    baseURL: 'https://servicios.neunapp.com/api/tienda',
    timeout: 3000
})

export function apiProducts(){
    return instance.get('/productos/lista')
}