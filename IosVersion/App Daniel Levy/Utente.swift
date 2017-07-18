//
//  UtenteLoggato.swift
//  App Daniel Levy
//
//  Created by Giulio Tavella on 12/07/17.
//  Copyright © 2017 Giulio Tavella. All rights reserved.
//

import UIKit

class Utente: NSObject
{
    var id = ""             // Identificativo dell'utente
    var nome = ""
    var cognome = ""
    var email = ""
    var annoDiNascita = ""
    var nomeFoto = ""       //  Solamente il nome della foro, l'estensione è small,medium ecc
    var citta = ""
    var località = ""
    var indirizzo = ""
    var presentazione = ""  //  Testo con descrizione della persona
    var cellulare = ""
    var offerta1 = ""       //  offerta lavorativa che l'utente ha messo, massimo 3
    var offerta2 = ""
    var offerta3 = ""
    var professione = ""
    var lingua = ""
    var patente = ""
    var bloccato = false    // se diventa true allora dobbiamo bloccare l'app
    
    
    //  Costruttore singolo
    
    override init() {
        //
    }
    
    
    //  Costruttore totale con ogni campo
    //
    //
    
    
    init(id :               String,
         nome :             String,
         cognome:           String,
         email:             String,
         annoDiNascita:     String,
         nomeFoto :         String,
         citta:             String,
         località:          String,
         indirizzo:         String,
         presentazione:     String,
         cellulare:         String,
         offerta1 :         String,
         offerta2:          String,
         offerta3:          String,
         professione:       String,
         lingua:            String,
         patente:           String,
         bloccato :         Bool
        
        
        
        
        ) {
        //
    }

}


