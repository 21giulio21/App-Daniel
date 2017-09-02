//
//  OffriController.swift
//  App Daniel Levy
//
//  Created by Giulio Tavella on 22/07/17.
//  Copyright © 2017 Giulio Tavella. All rights reserved.
//

import UIKit

class OffriController: UIViewController,UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate,UITextFieldDelegate {

    @IBOutlet weak var accediButton: UIButton!
    @IBOutlet weak var labelNotLogin: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var topView: UIView!
    
    var mieOfferte = ["DJ","Accompagnamento","Altro"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)

 
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.SearchBarSetup()
        self.creoLayout()
        
      
        
        //AppDelegate.utenteLoggato = nil

        controlloLogin()
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    //func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    //    self.view.endEditing(true)
    //    return false
    //}
    
    func SearchBarSetup()
    {
        let searchBar = UISearchBar(frame: CGRect(x: 0, y: 0, width: (UIScreen.main.bounds.width), height: 50))
        searchBar.showsScopeBar = true
        
        // imposto la search bar
        searchBar.placeholder = "Cerca stai cercando ?"
        searchBar.tintColor = UIColor.white
        // prendo la textfield inserita li dentro per cambiare il colore
        let textFieldInsideSearchBar = searchBar.value(forKey: "searchField") as? UITextField
        //textFieldInsideSearchBar?.delegate = self
        textFieldInsideSearchBar?.textColor = UIColor.white
        
        // imposto lo stile
        searchBar.searchBarStyle = .minimal
        //searchBar.scopeButtonTitles = ["Name","Years","By"]
        
        searchBar.delegate = self
        
        
        // permetto di eliminare l'auto riposizionamento
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        topView.addSubview(searchBar)
        
        // x,y,height,width
        searchBar.leftAnchor.constraint(equalTo: topView.leftAnchor).isActive = true
        searchBar.bottomAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
        //searchBar.centerYAnchor.constraint(equalTo: topView.centerYAnchor).isActive = true
        searchBar.widthAnchor.constraint(equalToConstant: topView.bounds.width).isActive = true
        searchBar.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        // se voletto metterlo come cella che va su o giu
        //self.tableView.tableHeaderView = searchBar
        
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("searchBar->textDidChange")
        if searchText.isEmpty
        {
            //array_name = ["Giulio","Matteo","Gianni"]
            self.tableView.reloadData()
            
        }
        else{
            
            
            
            filterTabView(ind: searchBar.selectedScopeButtonIndex, searchText: searchText)
            
            self.tableView.reloadData()
        }
    }

    
    func filterTabView(ind:Int,searchText:String)
    {
        // qui cerco il testo contenuto nelle celle
        
        
        mieOfferte = mieOfferte.filter({ (mod) -> Bool in
            
            if mieOfferte.contains(searchText)
            {
                return true
            }else
            {
                return false
            }
        })
        
        
    }
    func creoLayout()
    {
        // imposto la view in cimacosi a quella attacco tutto
        
        self.topView.translatesAutoresizingMaskIntoConstraints = false
        self.topView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.topView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        self.topView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        self.topView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -(self.view.frame.height - 80)).isActive = true
        self.topView.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        
        
        // imposto la tableView al centro della madonna
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        self.tableView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.tableView.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        self.tableView.topAnchor.constraint(equalTo: self.topView.bottomAnchor).isActive = true
        self.tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -40).isActive = true
 
    }
    
    func controlloLogin()
    {
        // se entro qui allora sono loggato
        if let utente = AppDelegate.utenteLoggato
        {
            self.tableView.isHidden = false
            self.labelNotLogin.isHidden = true
            self.accediButton.isHidden = true
            
        }else
        {
            // in questo else non sono loggato
            self.tableView.isHidden = true
            self.labelNotLogin.isHidden = false
            self.accediButton.isHidden = false
            
            
        }

        
    
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.mieOfferte.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //cerca una cella con identifier uguale a "Cella" e ne recupera un'istanza
        let cella = self.tableView.dequeueReusableCell(withIdentifier: "cella")
        
        
        //riempio la cella assegnando ad una label testuale il nome dell'alimento
        cella?.textLabel?.text = self.mieOfferte[indexPath.row]
        cella?.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        
        return cella!
        
        
    }
    

    

    

    
    
   
   

}
