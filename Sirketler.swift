//
//  Sirketler.swift
//  Halka Arz
//
//  Created by Mehmet Arıkan on 6.08.2022.
//

import Foundation
import SwiftUI

struct Sirketler{
    
    let logo: String
    let baslik: String
    let bistKodu: String
    let aciklama: String
    let arzTarihi: String
    let borsaTarihi: String
    let fiyat: Double
    let arzMiktarı: Double
    let dagitim: String
    let araciKurum: String
    let pazar: String
    
}

struct SirketListesi{
    static let hepsi = [
        
        Sirketler(logo: "deneme", baslik: "Mavis LTD STI", bistKodu: "MVS", aciklama: "Maviş LTD Sti, SPK onayı alarak halka arz oluyor.", arzTarihi: "15 - 16 Ağustos", borsaTarihi: "21 Ağustos'ta işleme başlayacak.", fiyat: 14.40, arzMiktarı: 13.600, dagitim: "Eşit", araciKurum: "Osmanlı Menkul", pazar: "Yıldız Pazar"),
                        
        Sirketler(logo: "arikan", baslik: "Arikan", bistKodu: "AR", aciklama: "Arikan Demir Çelik fabrikası halka arz oluyor.", arzTarihi: "1 Ekim 2022 ", borsaTarihi: "5 Ekim 2022", fiyat: 44.00, arzMiktarı: 145.555, dagitim: "Oransal Dağıtım", araciKurum: "Osmanlı Menkul", pazar: "Yıldız Pazar")
    ]
}
