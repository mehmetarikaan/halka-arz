//
//  Sirketler.swift
//  Halka Arz
//
//  Created by Mehmet Arıkan on 6.08.2022.
//

import Foundation
import SwiftUI

struct Sirketler: Identifiable{
    let id = UUID()
    let logo: String
    let baslik: String
    let bistKodu: String
    let aciklama: String
    let arzTarihi: String
    let borsaTarihi: String
    let fiyat: Double
    let adet: Double
    let dagitim: String
    let araciKurum: String
    let pazar: String
    let aciklikOrani: Double
}

struct SirketListesi{
    static let hepsi = [
        
        
        Sirketler(logo: "arikan", baslik: "Arikan Demir Çelik Fabrikası", bistKodu: "ARI", aciklama: "Şirket halka arz gelirinin büyük bir kısmını Türkiye İş Bankası ve TSKB’den aldığı 12,6 milyon avroluk borcun kalan kısmını (7,44 milyon avro) ödemek için kullanacak. Koroplast halka Şirket halka arz gelirinin büyük bir kısmını Türkiye İş Bankası ve TSKB’den aldığı 12,6 milyon avroluk borcun kalan kısmını (7,44 milyon avro) ödemek için kullanacak. Koroplast halka Şirket halka arz gelirinin büyük bir kısmını Türkiye İş Bankası ve TSKB’den aldığı 12,6 milyon avroluk borcun kalan kısmını (7,44 milyon avro) ödemek için kullanacak. Koroplast halka arzdan elde ettiği gelirin kalan kısmını ise tahvil alımında kullanacak.", arzTarihi: "1 Ekim 2022 ", borsaTarihi: "5-7 Ekim 2022", fiyat: 44.00, adet: 145.555, dagitim: "Oransal Dağıtım", araciKurum: "Osmanlı Menkul", pazar: "Yıldız Pazar", aciklikOrani: 34.5),
        Sirketler(logo: "zeynep", baslik: "Zeynep Onal Giyim Tekstil Market", bistKodu: "ZYNP", aciklama: "Zeynep Önal fabrikası halka arz oluyor", arzTarihi: "15-16 Eylül 2022", borsaTarihi: "23 Eylül 2022", fiyat: 44.20, adet: 2232, dagitim: "Oransal Dağıtım", araciKurum: "Ziraat Yatırım", pazar: "Yıldız Pazar", aciklikOrani: 34.5),
        Sirketler(logo: "deneme", baslik: "Mavis Gayrimenkul Yatırım", bistKodu: "MVS", aciklama: "Maviş LTD Sti, SPK onayı alarak halka arz oluyor.", arzTarihi: "15 - 16 Ağustos", borsaTarihi: "21 Ağustos'ta işleme başlayacak.", fiyat: 14.40, adet: 13.600, dagitim: "Eşit", araciKurum: "Osmanlı Menkul", pazar: "Yıldız Pazar", aciklikOrani: 34.5),
        Sirketler(logo: "aron", baslik: "Aron Otomativ Alım Satım", bistKodu: "ARN", aciklama: "Aron Otomativ Halka Arz oluyor", arzTarihi: "1-2 Ocak 2023", borsaTarihi: "15 Ocak 2023", fiyat: 560.00, adet: 1234.00, dagitim: "Eşit Dağıtım", araciKurum: "Osmanlı Menkul", pazar: "Yıldız Pazar", aciklikOrani: 34.5),
        Sirketler(logo: "arikan", baslik: "Arikan Demir Çelik Fabrikası", bistKodu: "ARI", aciklama: "Arikan Demir Çelik fabrikası halka arz oluyor.", arzTarihi: "1 Ekim 2022 ", borsaTarihi: "5-7 Ekim 2022", fiyat: 44.00, adet: 145.555, dagitim: "Oransal Dağıtım", araciKurum: "Osmanlı Menkul", pazar: "Yıldız Pazar", aciklikOrani: 34.5),
        Sirketler(logo: "zeynep", baslik: "Zeynep Onal Giyim Tekstil Market", bistKodu: "ZYNP", aciklama: "Zeynep Önal fabrikası halka arz oluyor", arzTarihi: "15-16 Eylül 2022", borsaTarihi: "23 Eylül 2022", fiyat: 44.20, adet: 2232, dagitim: "Oransal Dağıtım", araciKurum: "Ziraat Yatırım", pazar: "Yıldız Pazar", aciklikOrani: 34.5),
        Sirketler(logo: "deneme", baslik: "Mavis Gayrimenkul Yatırım", bistKodu: "MVS", aciklama: "Maviş LTD Sti, SPK onayı alarak halka arz oluyor.", arzTarihi: "15 - 16 Ağustos", borsaTarihi: "21 Ağustos'ta işleme başlayacak.", fiyat: 14.40, adet: 13.600, dagitim: "Eşit", araciKurum: "Osmanlı Menkul", pazar: "Yıldız Pazar", aciklikOrani: 34.5),
        Sirketler(logo: "aron", baslik: "Aron Otomativ Alım Satım", bistKodu: "ARN", aciklama: "Aron Otomativ Halka Arz oluyor", arzTarihi: "1-2 Ocak 2023", borsaTarihi: "15 Ocak 2023", fiyat: 560.00, adet: 1234.00, dagitim: "Eşit Dağıtım", araciKurum: "Osmanlı Menkul", pazar: "Yıldız Pazar", aciklikOrani: 34.5),
        Sirketler(logo: "arikan", baslik: "Arikan Demir Çelik Fabrikası", bistKodu: "ARI", aciklama: "Arikan Demir Çelik fabrikası halka arz oluyor.", arzTarihi: "1 Ekim 2022 ", borsaTarihi: "5-7 Ekim 2022", fiyat: 44.00, adet: 145.555, dagitim: "Oransal Dağıtım", araciKurum: "Osmanlı Menkul", pazar: "Yıldız Pazar", aciklikOrani: 34.5),
        Sirketler(logo: "zeynep", baslik: "Zeynep Onal Giyim Tekstil Market", bistKodu: "ZYNP", aciklama: "Zeynep Önal fabrikası halka arz oluyor", arzTarihi: "15-16 Eylül 2022", borsaTarihi: "23 Eylül 2022", fiyat: 44.20, adet: 2232, dagitim: "Oransal Dağıtım", araciKurum: "Ziraat Yatırım", pazar: "Yıldız Pazar", aciklikOrani: 34.5),
        Sirketler(logo: "deneme", baslik: "Mavis Gayrimenkul Yatırım", bistKodu: "MVS", aciklama: "Maviş LTD Sti, SPK onayı alarak halka arz oluyor.", arzTarihi: "15 - 16 Ağustos", borsaTarihi: "21 Ağustos'ta işleme başlayacak.", fiyat: 14.40, adet: 13.600, dagitim: "Eşit", araciKurum: "Osmanlı Menkul", pazar: "Yıldız Pazar", aciklikOrani: 34.5),
        Sirketler(logo: "aron", baslik: "Aron Otomativ Alım Satım", bistKodu: "ARN", aciklama: "Aron Otomativ Halka Arz oluyor", arzTarihi: "1-2 Ocak 2023", borsaTarihi: "15 Ocak 2023", fiyat: 560.00, adet: 1234.00, dagitim: "Eşit Dağıtım", araciKurum: "Osmanlı Menkul", pazar: "Yıldız Pazar", aciklikOrani: 34.5),
        Sirketler(logo: "arikan", baslik: "Arikan Demir Çelik Fabrikası", bistKodu: "ARI", aciklama: "Arikan Demir Çelik fabrikası halka arz oluyor.", arzTarihi: "1 Ekim 2022 ", borsaTarihi: "5-7 Ekim 2022", fiyat: 44.00, adet: 145.555, dagitim: "Oransal Dağıtım", araciKurum: "Osmanlı Menkul", pazar: "Yıldız Pazar", aciklikOrani: 34.5),
        Sirketler(logo: "zeynep", baslik: "Zeynep Onal Giyim Tekstil Market", bistKodu: "ZYNP", aciklama: "Zeynep Önal fabrikası halka arz oluyor", arzTarihi: "15-16 Eylül 2022", borsaTarihi: "23 Eylül 2022", fiyat: 44.20, adet: 2232, dagitim: "Oransal Dağıtım", araciKurum: "Ziraat Yatırım", pazar: "Yıldız Pazar", aciklikOrani: 34.5),
        Sirketler(logo: "deneme", baslik: "Mavis Gayrimenkul Yatırım", bistKodu: "MVS", aciklama: "Maviş LTD Sti, SPK onayı alarak halka arz oluyor.", arzTarihi: "15 - 16 Ağustos", borsaTarihi: "21 Ağustos'ta işleme başlayacak.", fiyat: 14.40, adet: 13.600, dagitim: "Eşit", araciKurum: "Osmanlı Menkul", pazar: "Yıldız Pazar", aciklikOrani: 34.5),
        Sirketler(logo: "aron", baslik: "Aron Otomativ Alım Satım", bistKodu: "ARN", aciklama: "Aron Otomativ Halka Arz oluyor", arzTarihi: "1-2 Ocak 2023", borsaTarihi: "15 Ocak 2023", fiyat: 560.00, adet: 1234.00, dagitim: "Eşit Dağıtım", araciKurum: "Osmanlı Menkul", pazar: "Yıldız Pazar", aciklikOrani: 34.5),
        
    ]
}
