//
//  ViewController.swift
//  clima
//
//  Created by itesm on 1/8/20.
//  Copyright © 2020 itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var ciudad: UILabel!
    @IBOutlet weak var temp: UILabel!
    
    var ciudades : Array<Array<String>> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ciudades.append(["Caracas", "VEXX0008"])
        ciudades.append(["Paris", "FRXX0076"])
        ciudades.append(["Grenoble", "FRXX0153"])
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.ciudades.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.ciudades[row][0]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let urls = "https://query.yahooapis.com/v1/public/yql?format=json&q=SELECT%20*%20FROM%20weather.forecast%20WHERE%20u%20=%20%27c%27%20and%20location%20=%20%27"
        let url = URL(string: urls + self.ciudades[row][1] + "%27")
        let datos = NSData (contentsOf: url!)
        do {
            let json = try JSONSerialization.jsonObject(with: datos! as Data, options: JSONSerialization.ReadingOptions.mutableLeaves)
            let dico1 = json as! NSDictionary
            let dico2 = dico1["query"] as! NSDictionary
            let dico3 = dico2["results"] as! NSDictionary
            let dico4 = dico3["channel"] as! NSDictionary
            let dico5 = dico4["location"] as! NSDictionary
            
            self.ciudad.text = dico5["city"] as! NSString as String
            
            let dico6 = dico4["item"] as! NSDictionary
            let dico7 = dico6["condition"] as! NSDictionary
            
            self.temp.text = dico7["temp"] as! NSString as String
        }
        catch _ {
            
        }
    }


}

