//
//  AccessoController.swift
//  App Daniel Levy
//
//  Created by Giulio Tavella on 13/07/17.
//  Copyright © 2017 Giulio Tavella. All rights reserved.
//

import UIKit

class AccessoController: UIViewController {
    
    var mainViewController : MainViewController?

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func creaUnAccountPressButton(_ sender: Any) {
        
        let creoAccountController = self.storyboard?.instantiateViewController(withIdentifier: "CreoAccountController") as! CreoAccountController
        creoAccountController.accssoController = self
        self.present(creoAccountController, animated: true, completion: nil)
    }
    @IBAction func accediPressButton(_ sender: Any)
    {
        let accediController = self.storyboard?.instantiateViewController(withIdentifier: "LoginController") as! LoginController
        accediController.accssoController = self
        self.present(accediController, animated: true, completion: nil)
        
    }
    
    func dismiss()
    {
        self.dismiss(animated: true, completion: nil)
    }

}
