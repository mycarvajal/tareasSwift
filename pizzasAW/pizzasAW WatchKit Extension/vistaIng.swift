//
//  vistaIng.swift
//  pizzasAW WatchKit Extension
//
//  Created by itesm on 12/26/19.
//  Copyright © 2019 itesm. All rights reserved.
//

import WatchKit
import Foundation


class vistaIng: WKInterfaceController {
    var Fmasa: String = ""
    var Ftamano: String = ""
    var Fqueso:String = ""
    var ingredientes:String = ""
    
    var jamon = false
    var pepperoni = false
    var pavo = false
    var salchicha = false
    
    @IBAction func cambiojamon(_ value: Bool) {
        if value == true {
            jamon = true
        }
        if value == false {
            jamon = false
        }
    }
    @IBAction func cambiopepperoni(_ value: Bool) {
        if value == true {
            pepperoni = true
        }
        if value == false {
            pepperoni = false
        }
    }
    @IBAction func cambiopavo(_ value: Bool) {
        if value == true {
            pavo = true
        }
        if value == false {
            pavo = false
        }
    }
    @IBAction func cambiosalchicha(_ value: Bool) {
        if value == true {
            salchicha = true
        }
        if value == false {
            salchicha = false
        }
    }
    func verIng ()->String{
        var ing = ""
        if jamon == true {
            ing = ing + " Jamón,"
        }
        if pepperoni == true {
            ing = ing + " Pepperoni,"
        }
        if pavo == true {
            ing = ing + " Pavo,"
        }
        if salchicha == true {
            ing = ing + " Salchicha,"
        }
        return ing
    }
    @IBAction func iraFinal() {
        let ingredientes = verIng()
        let valorContext = Valor(t:Ftamano, m:Fmasa, q:Fqueso, i:ingredientes)
        pushController(withName: "IdentificadorFinal", context: valorContext)
    }
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let c=context as! Valor
        Ftamano = c.Ftamano
        Fmasa = c.Fmasa
        Fqueso = c.Fqueso
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
