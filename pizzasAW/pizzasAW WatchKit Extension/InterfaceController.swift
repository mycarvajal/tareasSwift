//
//  InterfaceController.swift
//  pizzasAW WatchKit Extension
//
//  Created by itesm on 12/26/19.
//  Copyright © 2019 itesm. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var Ltamano: WKInterfaceLabel!
    
    @IBOutlet weak var tamano: WKInterfaceSlider!
    var tam:String = "Chica"
    
    @IBAction func valortamano(_ value: Float) {
        Ltamano.setText(String(value))
        if value == 0{
            Ltamano.setText("Chica")
            tam = "Chica"
        }
        if value == 1{
            Ltamano.setText("Mediana")
            tam = "Mediana"
        }
        if value == 2{
            Ltamano.setText("Grande")
            tam = "Grande"
        }
    }
    
    @IBAction func IraMasa() {
        let valorContext = Valor(t:tam, m:"", q:"", i:"")
        pushController(withName: "IdentificadorValor", context: valorContext)
        
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
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
