//
//  Arzlar.swift
//  Halka Arz
//
//  Created by Mehmet Arıkan on 10.08.2022.
//

import Foundation

class Arzlar: Codable{
    
    var arz_id : String
    var arz_ad : String
    var arz_kod : String
    
    init(arz_id: String, arz_ad: String, arz_kod: String){
        
        self.arz_id = arz_id
        self.arz_kod = arz_kod
        self.arz_ad = arz_ad
    }
}
