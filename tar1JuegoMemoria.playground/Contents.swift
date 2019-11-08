import UIKit
//REto1
var arreglo : Array = [0]
for i in 1...100 {
    arreglo.append(i)
}
for n in arreglo {
    if n % 5 == 0{
        print("\(n) Bingo!!!")
    }
    if n % 2 == 0 {
        print("\(n) par")
    } else {
        print("\(n) impar")
    }
    if n >= 30 && n <= 40 {
        print("\(n) VivaSwift!!!")
    }
}

