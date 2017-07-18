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

    public var accssoController: AccessoController?

    @IBOutlet weak var nome: UITextField!
    @IBOutlet weak var cognome: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confermaPassword: UITextField!
    @IBOutlet weak var data: UIPickerView!
 
    // Array contentente gli anni che devono essere mostrati a video
    var Num = [String]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        riempimentoNum()
        data.delegate = self
        data.dataSource = self
        
    }
    
    //  Riempio il UIPickerView con i numeri da 1930 a 2018
    //  Cosi viene scelta l'anno di nascita in quell'intervallo
    //
    
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

    //  Speficico che ci vede essere una sola sezione nel UIPickerView
    //
    //
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //  Specifico che devono esserci tanti elementi nel UIPickerView
    //  quanti presenti nell'array Num
    //
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return Num.count
    }
    
    //  Specifico quali devono essere gli elementi nel UIPickerView
    //
    //

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Num[row]
    }
    
    @IBAction func pressCancellButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)

    }
   
    @IBAction func pressVaiButton(_ sender: Any) {
        
        AppDelegate.utenteLoggato = Utente()
        dismiss(animated: true, completion: nil)
        self.accssoController?.dismiss()
    
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Show the navigation bar on other view controllers
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    


}
