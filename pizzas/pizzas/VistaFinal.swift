//
//  VistaFinal.swift
//  pizzas
//
//  Created by itesm on 12/25/19.
//  Copyright © 2019 itesm. All rights reserved.
//

import UIKit

class VistaFinal: UIViewController {
    var FTamano:String = ""
    var FMasa:String = ""
    var FQueso:String = ""
    var FIngredientes:String = ""
    
    @IBOutlet weak var Ltamano: UILabel!
    @IBOutlet weak var Lmasa: UILabel!
    @IBOutlet weak var Lqueso: UILabel!
    @IBOutlet weak var Lingredientes: UILabel!
    @IBOutlet weak var Lconfirma: UILabel!
    
    @IBAction func confirmaOrden(_ sender: Any) {
        
        Lconfirma.text = "Orden confirmada. Tu pizza ha sido pedida. Muchas gracias por tu compra"
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        Ltamano.text = "Tamano: " + FTamano
        Lmasa.text = "Tipo de masa: " + FMasa
        Lqueso.text = "Tipo de queso: " + FQueso
        Lingredientes.text = FIngredientes
        Lconfirma.text = ""
        // Do any additional setup after loading the view.
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
