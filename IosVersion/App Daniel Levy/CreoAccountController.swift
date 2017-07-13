//
//  CreoAccountController.swift
//  App Daniel Levy
//
//  Created by Giulio Tavella on 12/07/17.
//  Copyright © 2017 Giulio Tavella. All rights reserved.
//

import UIKit

class CreoAccountController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @available(iOS 2.0, *)
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }


    @IBOutlet weak var nome: UITextField!
    @IBOutlet weak var cognome: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confermaPassword: UITextField!
    @IBOutlet weak var data: UIPickerView!
 
    var Num = [String]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        riempimentoNum()
        data.delegate = self
        data.dataSource = self
        
    }
    
    func riempimentoNum()
    {
        for i in stride(from: 1930, through: 2018, by: 1)
        {
            Num.append("\(i)")
        }
        Num.sort { (a, b) -> Bool in
            a > b
        }
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return Num.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Num[row]
    }
    
   
    


}
