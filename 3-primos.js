for (let i = 1; i <= 100; i++) {
    let count = 0
    for (let j = 1; j <= i; j++) {
        if (i % j == 0) {
            count+=1
        }
    }
    if (count == 2) {
        count = 0
        console.log('El número ' + i + ' es primo.')
    }
}