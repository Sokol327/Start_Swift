import UIKit

// a*x^2+b*x+c=0
let a = 2
let b = 7
let c = 3
let D = (b*b) - (4*a*c)
 
if (D < 0){
    print("Корней нет")
} else if (D == 0){
    let x:Double = (Double(-b) + sqrt(Double(D))) / (2*Double(a))
    print(x)
} else if (D > 0){
    let x1:Double = (Double(-b) + sqrt(Double(D))) / (2*Double(a))
    let x2:Double = (Double(-b) - sqrt(Double(D))) / (2*Double(a))
    print (x1,x2)
}
//trigon
//   A
//  |  \
//  |   \
//  |k1  \g
//  |  k2 \
//  B ---- C
let k1 = 3
let k2 = 4
let g = (sqrt(Double(k1*k1+k2*k2)))
let P = Double(k1)+Double(k2)+g
let S = ( k1 * k2)/2
print ("Гипотенуза = \(g) Перимитр = \(P) Площадь = \(S)^2 ")

//bank
var Dep = 41200
var Insert = 8
var year = 12
for _ in (1...year) {
    let summ = Dep + Dep * Insert / 100
    Dep = summ
    print ("Дипозит составил \(summ) ")
}
