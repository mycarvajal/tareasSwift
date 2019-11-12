//
//  ViewController.swift
//  Hamburguesa
//
//  Created by itesm on 11/12/19.
//  Copyright © 2019 itesm. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var LeyendaPais: UILabel!
    @IBOutlet weak var LeyendaHamburguesa: UILabel!
    
    let paises = ColeccionDePaises()
    let hamburguesas = ColeccionDeHamburguesa()
    let colores = Colores()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func DarHamburguesa() {
        LeyendaPais.text = paises.obtenPais()
        LeyendaHamburguesa.text = hamburguesas.obtenHamburguesa()
        let colorAleatorio  = colores.regresaColorAleatorio()
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio
    }
}

