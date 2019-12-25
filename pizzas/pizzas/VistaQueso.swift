//
//  VistaQueso.swift
//  pizzas
//
//  Created by itesm on 12/25/19.
//  Copyright © 2019 itesm. All rights reserved.
//

import UIKit

class VistaQueso: UIViewController {
    var FTamano:String = ""
    var FMasa:String = ""

    @IBOutlet weak var queso: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func obtenerQueso() -> String {
        if queso.selectedSegmentIndex == 0 {
            return "Mozarela"
        }
        if queso.selectedSegmentIndex == 1 {
            return "Cheddar"
        }
        if queso.selectedSegmentIndex == 2 {
            return "Parmesano"
        }
        if queso.selectedSegmentIndex == 3 {
                return "sin queso"
            }
        else {
            return "sin queso"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let queso = obtenerQueso()
        let sigVista = segue.destination as! VistaIngredientes
        sigVista.FTamano = FTamano
        sigVista.FMasa = FMasa
        sigVista.FQueso = queso
        
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
