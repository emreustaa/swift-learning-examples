
protocol CanFly {
    
    func fly()
}

extension CanFly {
    
    func fly(){
        print("The object takes off into the air")
    }
}

class Bird {
    
    var isFemale = true
    
    func layEgg(){
        if isFemale {
            print("The bird makes a new bird in a shell.")
        }
    }
    
}

class Eagle: Bird, CanFly {
    
    func fly() {
        print("The eagle flaps it wibgs abd kifts off into the sky")
    }
    
    
    func soar(){
        print("The eagle glides in the air using air currents.")
    }
}

class Penguin : Bird {
    
    func swim (){
        print("The penguin paddles thorugh the water.")
    }
}

struct FlyingMuseum {
    
    func flyingDemo(flyingObject: CanFly){
        flyingObject.fly()
    }
}

struct Airplane : CanFly {
    
    func fly() {
        print("The airplane uses its engine to lift off into the air.")
    }
}

let myEagle = Eagle()

//myEagle.fly()
//myEagle.layEgg()
//myEagle.soar()
//
let myPenguin = Penguin()
//
//myPenguin.layEgg()
//myPenguin.swim()


let myPlane = Airplane()

let flyingMuseum = FlyingMuseum()
flyingMuseum.flyingDemo(flyingObject: myEagle)
