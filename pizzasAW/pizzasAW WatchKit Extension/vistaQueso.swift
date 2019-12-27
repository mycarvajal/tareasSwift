//
//  vistaQueso.swift
//  pizzasAW WatchKit Extension
//
//  Created by itesm on 12/26/19.
//  Copyright © 2019 itesm. All rights reserved.
//

import WatchKit
import Foundation


class vistaQueso: WKInterfaceController {
    var Fmasa: String = ""
    var Ftamano: String = ""
    var queso:String = "Sin queso"
    
    @IBOutlet weak var Lqueso: WKInterfaceLabel!
    
    @IBAction func calculaQueso(_ value: Float) {
        if value == 0{
            Lqueso.setText("Sin queso")
            queso = "Sin queso"
        }
        if value == 1{
            Lqueso.setText("Mozarela")
            queso = "Mozarela"
        }
        if value == 2{
            Lqueso.setText("Cheddar")
            queso = "Cheddar"
        }
        if value == 3{
            Lqueso.setText("Parmesano")
            queso = "Parmesano"
        }
    }
    
    
    @IBAction func iraIngredientes() {
        let valorContext = Valor(t:Ftamano, m:Fmasa, q:queso, i:"")
        pushController(withName: "IdentificadorIng", context: valorContext)
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let c=context as! Valor
        Ftamano = c.Ftamano
        Fmasa = c.Fmasa
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
