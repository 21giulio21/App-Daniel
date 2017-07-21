//
//  CercaController.swift
//  App Daniel Levy
//
//  Created by Giulio Tavella on 20/07/17.
//  Copyright © 2017 Giulio Tavella. All rights reserved.
//

import UIKit

class CercaController: UIViewController,UITableViewDataSource,UITableViewDelegate,UISearchBarDelegate {

    @IBOutlet weak var tableView: UITableView!
    let cellSearch = UITableViewCell()
    var news = ["Giulio", "Matteo", "marco"]
    
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
        let searchBar = UISearchBar(frame: CGRect(x: 0, y: 0, width: (UIScreen.main.bounds.width), height: 50))
        searchBar.showsScopeBar = true
        
        // imposto la search bar
        searchBar.placeholder = "Cerca stai cercando ?"
        searchBar.tintColor = UIColor.white
        // prendo la textfield inserita li dentro per cambiare il colore
        let textFieldInsideSearchBar = searchBar.value(forKey: "searchField") as? UITextField
        textFieldInsideSearchBar?.textColor = UIColor.white
        
        // imposto lo stile
        searchBar.searchBarStyle = .minimal
        //searchBar.scopeButtonTitles = ["Name","Years","By"]
        
        searchBar.delegate = self
        
        // permetto di eliminare l'auto riposizionamento
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        cellSearch.addSubview(searchBar)
        
        // x,y,height,width
        //searchBar.leftAnchor.constraint(equalTo: topView.leftAnchor).isActive = true
        //searchBar.bottomAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
        //searchBar.centerYAnchor.constraint(equalTo: topView.centerYAnchor).isActive = true
        //searchBar.widthAnchor.constraint(equalToConstant: topView.bounds.width).isActive = true
        //searchBar.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        // se voletto metterlo come cella che va su o giu
        //self.tableView.tableHeaderView = searchBar
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if searchText.isEmpty
        {
           
            news = ["Giulio", "Matteo", "marco"]
            self.tableView.reloadData()
            
        }
        else{
            
            
            filterTabView(ind: searchBar.selectedScopeButtonIndex, searchText: searchText)
            self.tableView.reloadData()
        }
    }
 
    
    func filterTabView(ind:Int,searchText:String)
    {
        
        news = news.filter({ (mod) -> Bool in
            print("Testo da cercare: \(searchText)")
            
            if mod.contains(searchText)
            {
                return true
            }else
            {
                return false
            }
        })
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0
        {
            return cellSearch
        }else
        {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cella")
        cell?.textLabel?.text = news[indexPath.row - 1]

        return cell!
        }
        
        
        
        
        
    }
    
    

 

}
