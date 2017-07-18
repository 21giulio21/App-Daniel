//
//  LoginController.swift
//  App Daniel Levy
//
//  Created by Giulio Tavella on 13/07/17.
//  Copyright © 2017 Giulio Tavella. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    var accssoController: AccessoController?

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pressVai(_ sender: Any)
    {
        AppDelegate.utenteLoggato = Utente()
        dismiss(animated: true, completion: nil)
        self.accssoController?.dismiss()
        
        
        
    }

    @IBAction func pressCancellButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Show the navigation bar on other view controllers
        //self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}
