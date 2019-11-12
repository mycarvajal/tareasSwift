//
//  ViewController.swift
//  masfeliz
//
//  Created by itesm on 11/9/19.
//  Copyright © 2019 itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensajePositivo: UILabel!
    let colores = Colores()
    let frases = Datos()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func DarMensaje() {
        mensajePositivo.text = frases.regresaFraseAleatoria()
        let colorAleatorio  = colores.regresaColorAleatorio()
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio
    }
}

