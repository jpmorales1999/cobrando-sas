function esPalindromo(cadena) {
    let array = cadena.split("")
    let reversa = array.reverse()
    let join = reversa.join("")

    if (cadena === join) {
        return "Si es una palabra palíndrome"
    } else {
        return "NO es una palabra palíndrome"
    }
}

console.log(esPalindromo("amor a roma"))