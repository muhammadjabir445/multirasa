function factorial(angka) {
    if (angka === 0) {
        return 1
    }
    let test = angka * factorial(angka - 1)
    return test;
}

let faktor = factorial(12)
console.log(faktor)