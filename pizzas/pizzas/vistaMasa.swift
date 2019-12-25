//
//  vistaMasa.swift
//  pizzas
//
//  Created by itesm on 12/25/19.
//  Copyright © 2019 itesm. All rights reserved.
//

import UIKit

class vistaMasa: UIViewController {
    
    var FTamano:String = ""
    @IBOutlet weak var masa: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func obtenerMasa() -> String {
        if masa.selectedSegmentIndex == 0 {
            return "Delgada"
        }
        if masa.selectedSegmentIndex == 1 {
            return "Crujiente"
        }
        if masa.selectedSegmentIndex == 2 {
            return "Gruesa"
        }
        else {
            return "sin masa"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let masa = obtenerMasa()
        let sigVista = segue.destination as! VistaQueso
        sigVista.FTamano = FTamano
        sigVista.FMasa = masa
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
