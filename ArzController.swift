//
//  ArzController.swift
//  Halka Arz
//
//  Created by Mehmet Arıkan on 10.08.2022.
//

import Foundation

class ArzController{
    

    func tumAl(){
        
        let url = URL(string: "http://aronapp.xyz/tum_arzlar.php")!
        URLSession.shared.dataTask(with: url){ data, response, error in
            if error != nil || data == nil{
                print("Hata")
                return
            }
            do {
                let cevap = try JSONDecoder().decode(ArzCevap.self, from: data!)
                if let gelenArzListesi = cevap.arzlar{
                    self.
                }
            } catch {
                print(error.localizedDescription)
            }
            
        }
        
        
    }
}
