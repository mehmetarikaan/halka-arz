//
//  Sirketler.swift
//  Halka Arz
//
//  Created by Mehmet Arıkan on 15.08.2022.
//

import Foundation
import SwiftUI

struct HaberlerModel: Identifiable{
    let id = UUID()
    let baslik : String
    let aciklama : String
}
//MARK: Haberler Listesi
struct HaberlerListesi{
    static let hepsi = [
        HaberlerModel(baslik: "AZTEK Halka Arz oluyor", aciklama: "AZTEK, 5 Ağustos cuma günü halka arz oluyor.AZTEK, 5 Ağustos cuma günü halka arz oluyor.AZTEK"),
        HaberlerModel(baslik: "HKTM Halka arz oldu!", aciklama: "HKTM 10.50 lot ücretiyle halka arz oldu. Arza 375 bin bireysel yatırımcı katıldı.HKTM 10.50 lot ücretiyle halka arz oldu. Arza 375 bin bireysel yatırımcı katıldı.HKTM 10.50 lot ücretiyle halka arz oldu. Arza 375 bin bireysel yatırımcı katıldı.HKTM 10.50 lot ücretiyle halka arz oldu. Arza 375 bin bireysel yatırımcı katıldı."),
        HaberlerModel(baslik: "AZTEK Halka Arz oluyor", aciklama: "AZTEK, 5 Ağustos cuma günü halka arz oluyor.AZTEK, 5 Ağustos cuma günü halka arz oluyor.AZTEK, 5 Ağustos cuma günü halka arz oluyor.AZTEK, 5 Ağustos cuma günü halka arz oluyor.AZTEK, 5 Ağustos cuma günü halka arz oluyor.AZTEK, 5 Ağustos cuma günü halka arz oluyor."),
        HaberlerModel(baslik: "HKTM Halka arz oldu!", aciklama: "HKTM 10.50 lot ücretiyle halka arz oldu. Arza 375 bin bireysel yatırımcı katıldı.HKTM 10.50 lot ücretiyle halka arz oldu. Arza 375 bin bireysel yatırımcı katıldı.HKTM 10.50 lot ücretiyle halka arz oldu. Arza 375 bin bireysel yatırımcı katıldı.HKTM 10.50 lot ücretiyle halka arz oldu. Arza 375 bin bireysel yatırımcı katıldı."),
        HaberlerModel(baslik: "AZTEK Halka Arz oluyor", aciklama: "AZTEK, 5 Ağustos cuma günü halka arz oluyor.AZTEK, 5 Ağustos cuma günü halka arz oluyor.AZTEK, 5 Ağustos cuma günü halka arz oluyor.AZTEK, 5 Ağustos cuma günü halka arz oluyor.AZTEK, 5 Ağustos cuma günü halka arz oluyor.AZTEK, 5 Ağustos cuma günü halka arz oluyor."),
        HaberlerModel(baslik: "HKTM Halka arz oldu!", aciklama: "HKTM 10.50 lot ücretiyle halka arz oldu. Arza 375 bin bireysel yatırımcı katıldı.HKTM 10.50 lot ücretiyle halka arz oldu. Arza 375 bin bireysel yatırımcı katıldı.HKTM 10.50 lot ücretiyle halka arz oldu. Arza 375 bin bireysel yatırımcı katıldı.HKTM 10.50 lot ücretiyle halka arz oldu. Arza 375 bin bireysel yatırımcı katıldı.")
    ]
}


