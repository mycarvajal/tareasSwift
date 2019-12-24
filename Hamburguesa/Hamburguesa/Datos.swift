//
//  Datos.swift
//  Hamburguesa
//
//  Created by itesm on 11/12/19.
//  Copyright © 2019 itesm. All rights reserved.
//

import Foundation
import UIKit

struct Colores {
    let colores = [ UIColor(red:210/255.0, green: 90/255.0, blue: 45/255.0, alpha: 1),

    UIColor(red:40/255.0, green: 170/255.0, blue: 45/255.0, alpha: 1),

    UIColor(red:3/255.0, green: 180/255.0, blue: 90/255.0, alpha: 1),

    UIColor(red:210/255.0, green: 190/255.0, blue: 5/255.0, alpha: 1),

    UIColor(red:120/255.0, green: 120/255.0, blue: 50/255.0, alpha: 1),

    UIColor(red:130/255.0, green: 80/255.0, blue: 90/255.0, alpha: 1),

    UIColor(red:130/255.0, green: 130/255.0, blue: 130/255.0, alpha: 1),

    UIColor(red:3/255.0, green: 50/255.0, blue: 90/255.0, alpha: 1)]
    func regresaColorAleatorio() -> UIColor {
        let posicion = Int (arc4random()) % colores.count
        return colores [posicion]
    
    }
}

class ColeccionDePaises {
    let paises = ["Alemania", "Argentina", "Australia", "Bélgica", "Bolivia", "Brasil", "Canadá", "Chile", "Colombia", "Costa Rica", "Dinamarca", "Ecuador", "Egipto", "Etiopía", "Finlandia", "Israel", "Japón", "México", "Noruega","Portugal"]
    func obtenPais()->String {
        let posicion = Int(arc4random()) % paises.count
        return paises[posicion]
    }
}

class ColeccionDeHamburguesa {
    let hamburguesas = ["Korzo Fried Burger", "Hamburgão", "Latin Macho Burger", "Jalapeño Bacon Cheeseburger", "Bacon Cheeseburger", "Cheeseburger", "Green Chile Cheeseburger", "Green Chile Burger", "Tostón Burger", "Kuma Burger", "Astronaut Burger", "Frita Cubana","Crispy Cheese", "Korzo Fried Cheeseburger", "Korzo Fried Burger", "Harry’s", "Slider’s Burger", "New York Burger", "New York Cheeseburger", "Tostón Cheeseburger"]
    func obtenHamburguesa()->String {
        let posicion = Int(arc4random()) % hamburguesas.count
        return hamburguesas[posicion]
    }
}
