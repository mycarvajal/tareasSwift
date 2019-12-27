//
//  vistaFinal.swift
//  pizzasAW WatchKit Extension
//
//  Created by itesm on 12/26/19.
//  Copyright © 2019 itesm. All rights reserved.
//

import WatchKit
import Foundation


class vistaFinal: WKInterfaceController {
    var Fmasa: String = ""
    var Ftamano: String = ""
    var Fqueso:String = ""
    var Fingredientes:String = ""
    
    @IBOutlet weak var Ltamano: WKInterfaceLabel!
    @IBOutlet weak var Lmasa: WKInterfaceLabel!
    @IBOutlet weak var Lqueso: WKInterfaceLabel!
    @IBOutlet weak var Lingredientes: WKInterfaceLabel!
    
    @IBAction func confirmar() {
        Ltamano.setText("Orden confirmada")
        Lmasa.setText("Gracias por tu compra")
        Lqueso.setText(" " )
        Lingredientes.setText("")
    }
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let c=context as! Valor
        Ftamano = c.Ftamano
        Fmasa = c.Fmasa
        Fqueso = c.Fqueso
        Fingredientes = c.Fingredientes
        
        Ltamano.setText("Tamaño: " + Ftamano)
        Lmasa.setText("Masa: " + Fmasa)
        Lqueso.setText("Queso: " + Fqueso)
        Lingredientes.setText("Ingredientes: " + Fingredientes)
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
