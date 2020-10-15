        import UIKit

        // task 1

        func divisibleBy2 (numbers:Int) {
            if ( numbers % 2 == 0) {
                print ("Число четное ")
            } else {
                print ("Число не четное ")
            }
        }
        divisibleBy2(numbers:7)

        // task 2

        func remnant (divident:Int ,divider:Int) {
            let x = divident % divider
            if ( x == 0 ){
             print (" Число делиться без остатка" )
            }else {
             print ( " Число не делиться без остатка. Остаток равен \(x)" )
            }
        }
        remnant(divident: 54, divider: 5)

        // task 3

        func hundred (z:Int) -> [Int]{
            var onearray = Array<Int> ()
            var i = 0
           while i <= z {
           onearray.append(i)
            i += 1
            }
         return onearray
        }
         print (hundred (z:100))
      
        //task 4

       
        func Three (v:Int) -> [Int] {
            var arr = hundred(z: v)
            var i = 0
            while ( i < arr.count) {
            if arr[i]%2 == 0 {
                    arr.remove(at: i)
                } else if arr[i]%3 == 0{
                    arr.remove(at: i)
                }
                   i += 1
            }
            return arr
        }
        print (Three(v: 100))
        
        
       
        func fibonaci (p:Int)-> [Int] {
            var arrFb:[Int] = [0,1]
            var i = 1
            while i <= (p-1) {
                let fn = arrFb[i]+arrFb[i-1]
                arrFb.append(fn)
                i += 1
            }
            return arrFb
        }
        print (fibonaci(p: 10))

    


