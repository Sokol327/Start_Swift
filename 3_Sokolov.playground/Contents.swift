import UIKit

    enum engineState{
        case isOff
        case isOn
    }
    enum optionsTran{
        case manualGearbox
        case automaticGearbox
        case robotized
        case CVT
          
    }
    enum statesTrunc {
        case empty
        case full
        
    }

    struct sportCar {
        let brand : String
        let model : String
        var color : UIColor
        let bodyType : String
        var year : Int
        var horsePower : Int
        var weight :Int
        var conditioner : Bool = false
        var fuelConsumption : Float
        var Volume : Double
        var transmission : optionsTran
        var mileage : Double {
            didSet {
                let distans = self.mileage - oldValue
                print ("преодалели дистанцию в \(distans) миль ")
            }
        }
        var engine : engineState {
            willSet {
                if newValue == .isOff {
                    print ("Двигатель заглушен")
                }else {
                    print ("Двигатель запущен")
                }
            }
        }
    }
        
var ferstCar = sportCar(brand: "bmw", model: "m3", color: .white, bodyType: "cupe", year: 2018, horsePower: 300, weight: 1300, conditioner: true, fuelConsumption: 98, Volume: 2.5, transmission:.robotized, mileage: 180, engine:.isOn)
    ferstCar.brand
var twoCar = sportCar(brand: "nissan", model: "note", color: .yellow , bodyType:"mini", year: 2004, horsePower: 100, weight: 800, conditioner: true, fuelConsumption: 9.8, Volume: 1.2, transmission:.automaticGearbox, mileage: 166, engine:.isOff)

    print (twoCar)

          
    enum bodyType {
        case dumpTruck
        case trucker
        case cargo
        case specialized
    }
    enum brandList{
        case volovo
        case scania
        case daf
        case renault
        case man
        case камаз
        case газ
        case урал
    }




    struct trucCar {
        let brand : brandList
        let body :bodyType
        var color : UIColor
        var year : Int
        var horsePower : Int
        var weight :Int
        var conditioner : Bool = false
        var fuelConsumption : Float
        var Volume : Double
        var trunk : statesTrunc {
            willSet {
                if newValue == .full {
                    print ("багажник полон")
                } else {
                    print ("Багажник пуст ")
                }
            }
        }
            
        var transmission : optionsTran
        var mileage : Double {
            didSet {
                let distans = mileage - oldValue
                print ("преодалели дистанцию в \(distans) миль ")
                
             }
           
        }
        var engine : engineState {
            willSet {
                if newValue == .isOff {
                    print ("Двигатель заглушен")
                }else {
                    print ("Двигатель запущен")
                }
            }
        }
    }
        
var truckFerst = trucCar (brand: .камаз, body:.specialized, color: .white , year: 2013 , horsePower: 490, weight: 12, fuelConsumption: 52.5, Volume: 6.2, trunk:.full , transmission:.robotized , mileage: 32031, engine: engineState.isOff)

print (truckFerst)


