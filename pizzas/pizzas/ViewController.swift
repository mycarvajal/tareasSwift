//
//  ViewController.swift
//  pizzas
//
//  Created by itesm on 12/25/19.
//  Copyright © 2019 itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var masa: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func obtenerTamano() -> String {
        if masa.selectedSegmentIndex == 0 {
            return "Chica"
        }
        if masa.selectedSegmentIndex == 1 {
            return "Mediana"
        }
        if masa.selectedSegmentIndex == 2 {
            return "Grande"
        }
        else {
            return "sin tamaño"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tamano = obtenerTamano()
        let sigVista = segue.destination as! vistaMasa
        sigVista.FTamano = tamano
    }


}

