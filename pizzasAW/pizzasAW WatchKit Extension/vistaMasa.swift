//
//  vistaMasa.swift
//  pizzasAW WatchKit Extension
//
//  Created by itesm on 12/26/19.
//  Copyright © 2019 itesm. All rights reserved.
//

import WatchKit
import Foundation


class vistaMasa: WKInterfaceController {

    @IBOutlet weak var Lmasa: WKInterfaceLabel!
    @IBOutlet weak var masa: WKInterfaceSlider!
    var masa1: String = "Delgada"
    var Ftamano: String = ""
    
    @IBAction func cambiaMasa(_ value: Float) {
        
        if value == 0{
            Lmasa.setText("Delgada")
            masa1 = "Delgada"
        }
        if value == 1{
            Lmasa.setText("Crujiente")
            masa1 = "Crujiente"
        }
        if value == 2{
            Lmasa.setText("Gruesa")
            masa1 = "Gruesa"
        }
    }
    
    @IBAction func iraQueso() {
        let valorContext = Valor(t:Ftamano, m:masa1, q:"", i:"")
        pushController(withName: "IdentificadorQueso", context: valorContext)
        
    }
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let c=context as! Valor
        Ftamano = c.Ftamano
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
