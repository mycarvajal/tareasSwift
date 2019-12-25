//
//  VistaIngredientes.swift
//  pizzas
//
//  Created by itesm on 12/25/19.
//  Copyright © 2019 itesm. All rights reserved.
//

import UIKit


class VistaIngredientes: UIViewController {
    var FTamano:String = ""
    var FMasa:String = ""
    var FQueso:String = ""
    @IBOutlet weak var IJamon: UISwitch!
    @IBOutlet weak var IPepperoni: UISwitch!
    @IBOutlet weak var IPavo: UISwitch!
    @IBOutlet weak var ISalchicha: UISwitch!
    @IBOutlet weak var IAceituna: UISwitch!
    @IBOutlet weak var ICebolla: UISwitch!
    @IBOutlet weak var IPimiento: UISwitch!
    
    @IBOutlet weak var IPina: UISwitch!
    
    
    
    
    @IBOutlet weak var Bsiguiente: UIButton!
    @IBOutlet weak var Ling: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        IJamon.isOn = false
        IPepperoni.isOn = false
        IPavo.isOn = false
        ISalchicha.isOn = false
        IAceituna.isOn = false
        ICebolla.isOn = false
        IPimiento.isOn = false
        IPina.isOn = false
        // Do any additional setup after loading the view.
    }
    
    @IBAction func cambiaJamon(_ sender: Any) {
        mostrarIngredientes()
    }
    @IBAction func cambiaPepperoni(_ sender: Any) {
        mostrarIngredientes()
    }
    @IBAction func cambiaPavo(_ sender: Any) {
        mostrarIngredientes()
    }
    @IBAction func cambiaSalchicha(_ sender: Any) {
        mostrarIngredientes()
    }
    @IBAction func cambiaAceituna(_ sender: Any) {
        mostrarIngredientes()
    }
    @IBAction func cambiaCebolla(_ sender: Any) {
        mostrarIngredientes()
    }
    @IBAction func cambiaPimiento(_ sender: Any) {
        mostrarIngredientes()
    }
    @IBAction func cambiaPina(_ sender: Any) {
        mostrarIngredientes()
    }
    
    
    func mostrarIngredientes() {
        var num = 0
        var ing = ""
        if IJamon.isOn == true {
            num = num + 1
            ing = ing + "Jamón\n"
        }
        if IPepperoni.isOn == true {
            num = num + 1
            ing = ing + "Pepperoni\n"
        }
        if IPavo.isOn == true {
            num = num + 1
            ing = ing + "Pavo\n"
        }
        if ISalchicha.isOn == true {
            num = num + 1
            ing = ing + "Salchicha\n"
        }
        if IAceituna.isOn == true {
            num = num + 1
            ing = ing + "Aceituna\n"
        }
        if ICebolla.isOn == true {
            num = num + 1
            ing = ing + "Cebolla\n"
        }
        if IPimiento.isOn == true {
            num = num + 1
            ing = ing + "Pimiento\n"
        }
        if IPina.isOn == true {
            num = num + 1
            ing = ing + "Piña\n"
        }
        if num>0 && num<=5 {
            Bsiguiente.isEnabled = true
            Ling.text = ing
            
        }
        else {
            Bsiguiente.isEnabled = false
            Ling.text = "Demasiados ingredientes"
        }
    }
    
    func obtenerIngredientes() -> String {
        var num = 0
        var ing = ""
        if IJamon.isOn == true {
            num = num + 1
            ing = ing + "Jamón\n"
        }
        if IPepperoni.isOn == true {
            num = num + 1
            ing = ing + "Pepperoni\n"
        }
        if IPavo.isOn == true {
            num = num + 1
            ing = ing + "Pavo\n"
        }
        if ISalchicha.isOn == true {
            num = num + 1
            ing = ing + "Salchicha\n"
        }
        if IAceituna.isOn == true {
            num = num + 1
            ing = ing + "Aceituna\n"
        }
        if ICebolla.isOn == true {
            num = num + 1
            ing = ing + "Cebolla\n"
        }
        if IPimiento.isOn == true {
            num = num + 1
            ing = ing + "Pimiento\n"
        }
        if IPina.isOn == true {
            num = num + 1
            ing = ing + "Piña\n"
        }
        if num>0 && num<=5 {
            Bsiguiente.isEnabled = false
            Ling.text = ing
            return ing
        }
        else {
            Bsiguiente.isEnabled = false
            Ling.text = "Demasiados ingredientes"
            return "Demasiados ingredientes"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let ingredientes = obtenerIngredientes()
        let sigVista = segue.destination as! VistaFinal
        sigVista.FTamano = FTamano
        sigVista.FMasa = FMasa
        sigVista.FQueso = FQueso
        sigVista.FIngredientes = ingredientes
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
