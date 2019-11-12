import UIKit
enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}
class Auto {
    var velocidad : Velocidades
    init () {
        self.velocidad = .Apagado
    }
    func cambioDeVelocidad () -> (actual : Int, velocidadEnCadena : String){
        if velocidad.rawValue == 0 {
            velocidad = .VelocidadBaja
            return (20, "Velocidad Baja")
        }
        else if velocidad.rawValue == 20 {
            velocidad = .VelocidadMedia
            return (50, "Velocidad Media")
        }
        else if velocidad.rawValue == 50 {
            velocidad = .VelocidadAlta
            return (120, "Velocidad Alta")
        }
        else if velocidad.rawValue == 120 {
            velocidad = .VelocidadMedia
            return (50, "Velocidad Media")
        }
        else {
            return (0, "error")
        }
    }
}
var auto = Auto ()
for _ in 1...20 {
    let temp = auto.cambioDeVelocidad()
    print ("\(temp.0), \(temp.1)")
}
