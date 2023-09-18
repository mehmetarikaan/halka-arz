//
//  SirketListele.swift
//  Halka Arz
//
//  Created by Mehmet Arıkan on 6.08.2022.
//

import SwiftUI

struct Response: Codable {
    let arzlar: [Arzlar]
    let success: Int
}

struct Arzlar: Codable {
    let arzID, arzAd, arzLogo, arzKod: String
    let arzTarih, arzFiyat, arzAdet, arzBorsatarihi: String
    let arzDagitim, arzAracikurum, arzPazar, arzAciklikorani: String
    let arzAciklama: String

    enum CodingKeys: String, CodingKey {
        case arzID = "arz_id"
        case arzAd = "arz_ad"
        case arzLogo = "arz_logo"
        case arzKod = "arz_kod"
        case arzTarih = "arz_tarih"
        case arzFiyat = "arz_fiyat"
        case arzAdet = "arz_adet"
        case arzBorsatarihi = "arz_borsatarihi"
        case arzDagitim = "arz_dagitim"
        case arzAracikurum = "arz_aracikurum"
        case arzPazar = "arz_pazar"
        case arzAciklikorani = "arz_aciklikorani"
        case arzAciklama = "arz_aciklama"
    }
}

struct sirketSatiri: View {
    
    @State private var arzlar = [Arzlar]()
    var body: some View {
        NavigationView{
            List(arzlar, id: \.arzID){ arz in
                NavigationLink(destination: SirketDetay(arzlar: arz)) {
                    HStack(spacing:15){
                        Image(systemName: "multiply.circle.fill")
                            .data(urll: URL(string: "http://appranax.com/api/resimler/\(arz.arzLogo)")!)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70, height: 70, alignment: .center)
                            .cornerRadius(5)
                            .padding(.horizontal, 0)
                            .padding(.vertical, 5)
                        VStack(alignment:.leading, spacing: 3){
                            Text(arz.arzAd)
                                .fontWeight(.bold)
                                .font(.subheadline)
                            Text(arz.arzKod)
                                .font(.subheadline)
                                .lineLimit(2)
                                .minimumScaleFactor(0.5) // Metin arttıkça yazı tipini küçültüyor.
                            Text(arz.arzTarih)
                                .font(.system(size: 12))
                                .foregroundColor(.secondary)
                        }
                    }
                } .listStyle(.plain)
                .listRowBackground(Color("mor"))
            }.navigationTitle("Halka Arz")
            .background(Color("mor"))
            .foregroundColor(Color.white)
        }.task {
            await fetch()
        }
    }
    func fetch() async {
        print("başladı")
        // istek gönderdim
        guard let url = URL(string: "http://appranax.com/api/arzlar.php") else {
            print("url çalışmadı")
            return
        }
        do { // datayı aldım
            let (data, _) = try await URLSession.shared.data(from: url)
            print("data geldi")
            print(data)

            // decode ettim
            if let decodeResponse = try? JSONDecoder().decode(Response.self, from: data) {
            print("decode edildi")
            print(decodeResponse)
                
                arzlar = decodeResponse.arzlar
            }
        } catch {
            print("sorun var")
        }
    }
}

extension Image {
    func data(urll: URL) -> Self {
        if let data = try? Data(contentsOf: urll) {
            return Image(uiImage: UIImage(data: data)!)
                .resizable()
        }
        return self
            .resizable()
    }
}

struct SirketListele: View {
    var body: some View {
        sirketSatiri()
    }
}
struct SirketListele_Previews: PreviewProvider {
    static var previews: some View {
        SirketListele()
            .preferredColorScheme(.light)
    }
}
