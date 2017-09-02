//
//  ViewController.swift
//  App Daniel Levy
//
//  Created by Giulio Tavella on 07/07/17.
//  Copyright © 2017 Giulio Tavella. All rights reserved.
//

import UIKit

class MainViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate{
    
    @available(iOS 2.0, *)
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    @IBOutlet weak var tipoAiutoPicker: UIPickerView!
    @IBOutlet weak var provinciaPicker: UIPickerView!
    
    
    // Array contentente il tipo dell'aiuto e il posto
    var tipoAiutoArray = [String]()
    var provinciaArray = [String]()
    
    
    
    override func viewDidDisappear(_ animated: Bool) {
        //self.navigationController?.navigationBar.isHidden = false

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        riempimentoPicker()
        
        tipoAiutoPicker.delegate = self
        tipoAiutoPicker.dataSource = self
        
        provinciaPicker.delegate = self
        provinciaPicker.dataSource = self
        
        
        
    }
    
    //  Funzione che viene chiamata quando premo il pulsante cerca
    //  una volta che ho selezionato la categoria e
    //
    @IBAction func cercaButtonPress(_ sender: Any) {
        let cercaController = self.storyboard?.instantiateViewController(withIdentifier: "CercaController")
        self.navigationController?.pushViewController(cercaController!, animated: true)
        
    }
    
    func riempimentoPicker()
    {
        tipoAiutoArray.append("Baby sitter")
        tipoAiutoArray.append("Commisioni e spesa a casa")
        tipoAiutoArray.append("Compagnia anziani")
        
        
        provinciaArray.append("Genova")
        provinciaArray.append("Milano")
        provinciaArray.append("Roma")
        
        
    
    }


    override func viewWillAppear(_ animated: Bool) {
        //self.navigationController?.navigationBar.isHidden = true
        perform(#selector(controlloLogin), with: nil, afterDelay: 0)
    }
    
    func controlloLogin()
    {
        if let utente = AppDelegate.utenteLoggato
        {
        
        
        }else
        {
            let accessoController = self.storyboard?.instantiateViewController(withIdentifier: "AccessoController") as! AccessoController
        
            accessoController.mainViewController = self
            self.present(accessoController, animated: true, completion: nil)

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
        if tipoAiutoPicker == pickerView
        {
            return tipoAiutoArray.count
        }
        else
        {
            return provinciaArray.count
        }
        
    }
    
    //  Specifico quali devono essere gli elementi nel UIPickerView
    //
    //
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if tipoAiutoPicker == pickerView
        {
            return tipoAiutoArray[row]
        }
        else
        {
            return provinciaArray[row]
        }
    }


}

