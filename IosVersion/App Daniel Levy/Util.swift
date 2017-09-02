import Foundation
import Alamofire


/*
 Funzione che permette di scaricare tutte le città con i rispettivi id dal database e metterli un in array
 */

func scaricoCittaDalDatabase(completition: @escaping([Citta])->())
{
    var arrayCitta =  [Citta]()
    
    Alamofire.request("http://giralavoro.it/DEV/app/ottengoCitta.php").responseJSON { (response) in
        if let json = response.result.value {
            let dimensione = (json as! NSArray).count
            for i in 0..<dimensione
            {
                if let d = (json as! NSArray).object(at: i) as? NSMutableString
                {
                    do
                    {
                        let data = d.data(using: String.Encoding.utf8.rawValue)
                        // l'importante è capire bene il tipo di ritorno come in questo esempio
                        let jsonn  = try JSONSerialization.jsonObject(with: data!) as! NSDictionary
                        let citta_id = "\(jsonn["citta_id"]!)"
                        let citta_nome = "\(jsonn["citta_nome"]!)"
                        
                        
                        arrayCitta.append(Citta(id: citta_id, nome: citta_nome))
                        
                    }
                    catch
                    {
                        
                    }
                
                }
                
            }
            
            return completition(arrayCitta)
            
        }
        
    }

}



