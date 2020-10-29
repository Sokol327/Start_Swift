import UIKit

    enum EngineState{
        case isOff
        case isOn
    }
    enum OptionsTran{
        case manualGearbox
        case automaticGearbox
        case robotized
        case CVT
          
    }
    enum BtatesTrunc {
        case empty
        case full
    }
        
    enum BodyTypeTruc {
        case dumpTruck
        case trucker
        case cargo
        case specialized
    }

    enum BrandListCar  {
        case nissan
        case tesla
        case infinity
        case akura
        case toyota
        case Автоваз // пусть хоть где то побудет с большой буквы Г
        case volkswagen
    }
    enum BrandListTruc {
        case volovo
        case scania
        case daf
        case renault
        case man
        case камаз
        case газ
        case урал
        
    }
        
    
    // базовый класс
    class Car  {
        var color : String
        var yearOfManufacture : Int {
            didSet {
                if yearOfManufacture <= 1768 || yearOfManufacture >= 2020 {
                    print ( "Воу воу истрию надо учить "  )
                    yearOfManufacture = oldValue
                }
            }
        }
        var horsePower : Int
        var conditioner : Bool
        var transmission : OptionsTran
        var milage : Double
        static var carCount = 0
           
        init(color: String , yearOfManufacture:Int , horsePower:Int, conditioner : Bool, transmission:OptionsTran , milage: Double ) {
            self.conditioner = conditioner
            self.horsePower = horsePower
            self.color = color
            self.transmission = transmission
            self.yearOfManufacture = yearOfManufacture
            self.milage = milage
            Car.carCount += 1
        }
        static func carInfo() {
            print (" Всего авто \(self.carCount) ")
        }
        func vaz () {
            
        }
        func truncFull () {
        
        }
        
    }
        
        
var cars = Car (color: "pyrple", yearOfManufacture: 1945, horsePower: 45, conditioner:true, transmission: .automaticGearbox, milage: 178.5)


        
        
  // наследник 1
    class TrucCar:Car {
        var name : BrandListTruc
        var bodyType : BodyTypeTruc
        var engineState : EngineState
        var trunc : BtatesTrunc
            
            
            
        init(name:BrandListTruc, bodyType:BodyTypeTruc ,color: String , yearOfManufacture:Int , horsePower:Int, conditioner : Bool, transmission:OptionsTran , milage: Double , engineState:EngineState , trunc:BtatesTrunc){
                    self.bodyType = bodyType
                    self.name = name
                    self.engineState = engineState
                    self.trunc = trunc
        super.init (color: color, yearOfManufacture: yearOfManufacture, horsePower: horsePower, conditioner: conditioner, transmission: transmission , milage: milage)
        
        }
        
        override func truncFull() {
            switch trunc {
            case .full:
                print ("Отправляй в рейс")
            case .empty:
                print ("Отправляй на загрузку")
                
            }
        }
    }


var truc = TrucCar(name: .камаз, bodyType: .specialized, color: "yelow", yearOfManufacture: 1500, horsePower: 300, conditioner: true, transmission: .automaticGearbox, milage: 3555.1 , engineState: .isOn, trunc: .empty)

// наследник
class SuperCar:Car {
        var name : BrandListCar
        var engineState : EngineState
    
    init( name:BrandListCar, engineState:EngineState ,color: String , yearOfManufacture:Int , horsePower:Int, conditioner : Bool, transmission:OptionsTran , milage: Double ){
            self.name = name
            self.engineState = engineState
        super.init(color: color , yearOfManufacture: yearOfManufacture , horsePower: horsePower, conditioner: conditioner, transmission: transmission, milage: milage)
        }

    override func vaz () {
        switch name {
        case .Автоваз:
            print ("Это не автомобиль ")
        default:
            print ("Это автомобиль ")
        }
    }
}

var bipbip = SuperCar (name: .Автоваз, engineState: .isOn, color: "yelow", yearOfManufacture: 1999, horsePower: 200, conditioner: true, transmission: .CVT, milage: 999.1)
   
