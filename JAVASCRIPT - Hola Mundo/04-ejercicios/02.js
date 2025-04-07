/**
 * Nombre: ancho x alto
 * 8K 7680 x 4320
 * 4K 3840 x 4320
 * WQHD 2560 x 1440
 * FHD 1920 x 1080
 * HD 1280 x 720
 */

function nombreResolucion(ancho, alto) {
    if (ancho < 1280 || alto < 720) {
        return false
    }
    if (ancho < 1920 || alto < 1080) {
        return 'HD'
    }
    if (ancho < 2560 || alto < 1440) {
        return 'FHD'
    }
    if (ancho < 3840 || alto < 4320) {
        return 'WQHD'
    }
    if (ancho < 7680 || alto < 4320) {
        return '4K'
    }
        return '8K'
}

let nombre = nombreResolucion(1280, 719);

console.log(nombre);