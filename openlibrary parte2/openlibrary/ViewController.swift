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
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var autores: UILabel!
    @IBOutlet weak var portada: UIImageView!
    
    let urlinicial = "https://openlibrary.org/api/books?jscmd=data&format=json&bibkeys=ISBN:"
    var url = ""
    func conectar (urls:String, isbn:String) {
        let url = URL(string: urls)
        let datos:NSData? = NSData(contentsOf: url! as URL)
        
        if datos == nil {
            resultado.text = "Error en la conexión. Favor de intentar más tarde"
        }
        else {
            let texto = NSString(data: datos! as Data, encoding: String.Encoding.utf8.rawValue)
            resultado.text = String(texto!)
            if texto == "{}" {
                resultado.text = "Libro no encontrado"
                
            }
            else {
                do {
                    let json = try JSONSerialization.jsonObject(with: datos! as Data, options: JSONSerialization.ReadingOptions.mutableLeaves)
                    let dico1 = json as! NSDictionary
                    let dico2 = dico1[isbn] as! NSDictionary
                    //let dico3 = dico2["results"] as! NSDictionary
                    //let dico4 = dico3["channel"] as! NSDictionary
                    //let dico5 = dico4["location"] as! NSDictionary
                    
                    titulo.text = dico2["title"] as! NSString as String
                    
                    //let dico6 = dico2["authors"] as! NSDictionary
                    //let dico7 = dico6["condition"] as! NSDictionary
                    let autor = dico2["authors"] as! NSArray
                    imprimirnombres (autor: autor)
                    if dico2["cover"] != nil {
                    let dico3 = dico2["cover"] as! NSDictionary
                    let Imagen = dico3["small"] as! NSString as String
                    let urlImagen = URL(string: Imagen)!
                    let imagendata :NSData = try NSData(contentsOf: urlImagen)
                    let imagen = UIImage (data: imagendata as Data)
                    portada.image = imagen
                    }
                }
                catch _ {
                    
                }
            }
        }
    }
    
    
    
    func imprimirnombres (autor: NSArray) {
        let total = autor.count
        var letrero = ""
        var i = 0
        while i < total {
            let dico3 = autor[i] as! NSDictionary
            letrero = letrero + (dico3["name"] as! NSString as String) + ", "
            i = i + 1
            
        }
        autores.text = letrero
    }
    
    @IBAction func enter(_ sender: Any) {
        var dir: String = ""
        var dir2: String = ""
        var bn: String = ""
        dir2 = String (isbn.text!)
        bn = "ISBN:" + String (isbn.text!)
        dir = urlinicial + dir2
        conectar (urls: dir, isbn: bn)
    }
    
    @IBAction func BuscarLibro(_ sender: Any) {
        var dir: String = ""
        var dir2: String = ""
        var bn: String = ""
        dir2 = String (isbn.text!)
        bn = "ISBN:" + String (isbn.text!)
        dir = urlinicial + dir2
        conectar (urls: dir, isbn: bn)
        
    }
    @IBAction func LimpiarCampo(_ sender: Any) {
        isbn.text = ""
        
        resultado.text = ""
        titulo.text = ""
        autores.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        titulo.text = ""
        autores.text = ""
        // Do any additional setup after loading the view.
    }


}

