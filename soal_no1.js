function cekBilangan(angka) {
    if (angka < 2) {
        return false;
    }
    for (let i = 2; i <= Math.sqrt(angka); i++) {
        if (angka % i === 0) {
            return false;
        }
    }
    return true;
}

let test = cekBilangan(99)

console.log(test)