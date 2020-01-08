//
//  vistaMasa.swift
//  pizzasAW WatchKit Extension
//
//  Created by itesm on 12/26/19.
//  Copyright © 2019 itesm. All rights reserved.
//

import WatchKit

class Valor: NSObject {
    var Ftamano:String = ""
    var Fmasa:String = ""
    var Fqueso:String = ""
    var Fingredientes:String = ""
    
    init (t:String, m:String, q:String, i:String){
        Ftamano = t
        Fmasa = m
        Fqueso = q
        Fingredientes = i
    }

}
