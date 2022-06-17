const interface = require('readline-sync')

do {
    opcion = parseInt(interface.question(`
        Selecciona una opcion:
        1. Sumar
        2. Restar
        3. Multiplicar
        4. Dividir
    `))

    if (opcion != 0) {
        number1 = parseInt(interface.question('Ingresa un numero: '))
        number2 = parseInt(interface.question('Ingresa otro numero: '))
    }

    switch (opcion) {
        case 1:
            console.log("La suma total es " + sumar(number1, number2))
            break
        case 2:
            console.log("La resta total es " + restar(number1, number2))
            break
        case 3:
            console.log("La multiplicación total es " + multiplicar(number1, number2))
            break
        case 4:
            console.log("La división total es " + dividir(number1, number2))
            break
        case 0:
            process.exit()
            break
        default:
            console.log('Seleccione una opción valida')
            break
    }
} while (opcion != 0)

function sumar(number1, number2) {
    return number1 + number2
}

function restar(number1, number2) {
    return number1 - number2
}

function multiplicar(number1, number2) {
    return number1 * number2
}

function dividir(number1, number2) {
    return number1 / number2
}