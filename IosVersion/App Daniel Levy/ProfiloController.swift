//
//  ProfiloController.swift
//  App Daniel Levy
//
//  Created by Giulio Tavella on 22/07/17.
//  Copyright © 2017 Giulio Tavella. All rights reserved.
//

import UIKit

class ProfiloController: UIViewController {

    //  Oggetti che sono visibili se non sono
    //  loggato
    @IBOutlet weak var accediButton: UIButton!
    @IBOutlet weak var labelNonConnesso: UILabel!
    
    //  Oggetti che sono visibili quando sono
    //  loggato
    @IBOutlet weak var buttonModificaDatiPersonali: UIButton!
    @IBOutlet weak var emailEmailUtente: UILabel!
    @IBOutlet weak var labelCognomeUtente: UILabel!
    @IBOutlet weak var labelLomeUtente: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelCognome: UILabel!
    @IBOutlet weak var labelNome: UILabel!
    @IBOutlet weak var immagineProfilo: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.controlloLogin()
    }
    
    func controlloLogin()
    {
        // se entro qui allora sono loggato
        if let utente = AppDelegate.utenteLoggato
        {
            self.buttonModificaDatiPersonali.isHidden = false
            self.emailEmailUtente.isHidden = false
            self.labelCognomeUtente.isHidden = false
            self.labelLomeUtente.isHidden = false
            self.labelEmail.isHidden = false
            self.labelCognome.isHidden = false
            self.labelNome.isHidden = false
            self.immagineProfilo.isHidden = false
            
            self.labelNonConnesso.isHidden = true
            self.accediButton.isHidden = true
            
        }else
        {
            // in questo else non sono loggato
            self.buttonModificaDatiPersonali.isHidden = true
            self.emailEmailUtente.isHidden = true
            self.labelCognomeUtente.isHidden = true
            self.labelLomeUtente.isHidden = true
            self.labelEmail.isHidden = true
            self.labelCognome.isHidden = true
            self.labelNome.isHidden = true
            self.immagineProfilo.isHidden = true
            
            self.labelNonConnesso.isHidden = false
            self.accediButton.isHidden = false
            
            
        }
        
        
        
    }




}
