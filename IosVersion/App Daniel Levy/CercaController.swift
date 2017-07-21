//
//  CercaController.swift
//  App Daniel Levy
//
//  Created by Giulio Tavella on 20/07/17.
//  Copyright © 2017 Giulio Tavella. All rights reserved.
//

import UIKit

class CercaController: UIViewController,UITableViewDataSource,UITableViewDelegate,UISearchResultsUpdating {
    
  
   


    @IBOutlet weak var tableView: UITableView!
    let cellSearch = UITableViewCell()
    var news = ["Giulio", "Matteo", "marco"]
    var resultSearchController = UISearchController()
    
    // tolgo la status bar
    override var prefersStatusBarHidden: Bool {
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.SearchBarSetup()
    }
    
    func SearchBarSetup()
    {
        self.resultSearchController = ({
            // creo un oggetto di tipo UISearchController
            let controller = UISearchController(searchResultsController: nil)
            
            // impongo alla searchBar, contenuta all'interno del controller, di adattarsi alle dimensioni dell'applicazioni
            controller.searchBar.sizeToFit()
            
            // il searchResultsUpdater, ovvero colui che gestirà gli eventi di ricerca, sarà la ListaTableViewController (o self)
            controller.searchResultsUpdater = self
            
            // rimuove la tableView di sottofondo in modo da poter successivamente visualizzare gli elementi cercati
            controller.dimsBackgroundDuringPresentation = false
            
            
            
            // atacco alla parte superiore della TableView la searchBar
            self.tableView.tableHeaderView = controller.searchBar
            
            // restituisco il controller creato
            return controller
        })()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
 
    
    func filtraContenuti(_ testoCercato: String)
    {
        news = news.filter({ (mod) -> Bool in
            
            if mod.contains(testoCercato)
            {
                return true
            }else
            {
                return false
            }
        })
        self.tableView.reloadData()
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
            return self.news.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        //cerca una cella con identifier uguale a "Cella" e ne recupera un'istanza
        let cella = self.tableView.dequeueReusableCell(withIdentifier: "cella")
     
        var valore = self.news[indexPath.row]
        
        //riempio la cella assegnando ad una label testuale il nome dell'alimento
        cella?.textLabel?.text = valore
        cella?.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        
        return cella!
        
        
    }


    func updateSearchResults(for searchController: UISearchController)
    {
        print("updateSearchResults")
        if  (searchController.searchBar.text?.characters.count)! > 0 {
            let testoCercato = searchController.searchBar.text
            print("Testo cercato \(testoCercato)")
            filtraContenuti(testoCercato!)
        }else
        {
            self.tableView.reloadData()
        }
        
    }
    

 

}
