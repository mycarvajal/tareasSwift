//
//  ViewController.swift
//  openlibrary
//
//  Created by itesm on 1/8/20.
//  Copyright © 2020 itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var isbn: UITextField!
    
    @IBOutlet weak var resultado: UITextView!
    let urlinicial = "https://openlibrary.org/api/books?jscmd=data&format=json&bibkeys=ISBN:"
    var url = ""
    func conectar (urls:String) {
        let url = URL(string: urls)
        let datos:NSData? = NSData(contentsOf: url! as URL)
        
        if datos == nil {
            resultado.text = "Error en la conexión. Favor de intentar más tarde"
        }
        else {
            let texto = NSString(data: datos! as Data, encoding: String.Encoding.utf8.rawValue)
            resultado.text = String(texto!)
        }
        
    }
    
    @IBAction func enter(_ sender: Any) {
        var dir: String = ""
        var dir2: String = ""
        dir2 = String (isbn.text!)
        dir = urlinicial + dir2
        conectar (urls: dir)
    }
    
    @IBAction func BuscarLibro(_ sender: Any) {
        var dir: String = ""
        var dir2: String = ""
        dir2 = String (isbn.text!)
        dir = urlinicial + dir2
        conectar (urls: dir)
        
    }
    @IBAction func LimpiarCampo(_ sender: Any) {
        isbn.text = ""
        
        resultado.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

