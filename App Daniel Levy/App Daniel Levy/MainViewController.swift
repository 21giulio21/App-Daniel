//
//  ViewController.swift
//  App Daniel Levy
//
//  Created by Giulio Tavella on 07/07/17.
//  Copyright © 2017 Giulio Tavella. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        perform(#selector(controlloLogin), with: nil, afterDelay: 0)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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


}

