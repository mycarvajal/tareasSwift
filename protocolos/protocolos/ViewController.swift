//
//  ViewController.swift
//  protocolos
//
//  Created by itesm on 1/6/20.
//  Copyright © 2020 itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    func sincrono() {
        let urls = "http://itesm.mx"
        let url = URL(string: urls)
        let datos:NSData? = NSData(contentsOf: url! as URL)
        let texto = NSString(data: datos! as Data, encoding: String.Encoding.utf8.rawValue)
        print (texto!)
    }
    func asincrono() {
        let urls = "http://itesm.mx"
        let url = URL(string: urls)
        let sesion = URLSession.shared
        
        /*let bloque = { (datos: NSData?, resp : URLResponse?, error : NSError?)-> Void in let texto = NSString(data: datos! as Data, encoding: String.Encoding.utf8.rawValue)
            print (texto!)
        }
        
        let task = sesion.dataTask(with: url!) { data, response, error in
            print(data)
            print(response)
            print(error)
        }*/
        let dt = sesion.dataTask(with: url!, completionHandler: { datos, response, error in
            let texto = NSString(data: datos! as Data, encoding: String.Encoding.utf8.rawValue)
            print (texto!)
        })
        
        dt.resume()
        print ("antes o despues")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        asincrono()
    }


}

