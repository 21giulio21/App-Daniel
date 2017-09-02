//
//  Citta.swift
//  App Daniel Levy
//
//  Created by Giulio Tavella on 23/07/17.
//  Copyright © 2017 Giulio Tavella. All rights reserved.
//

import UIKit

class Citta: NSObject
{
    
    var id = ""
    var regione = ""
    var nome = ""
    
    init(id: String,regione:String,nome:String) {
        self.id = id
        self.regione = regione
        self.nome = nome
    }
    

}
