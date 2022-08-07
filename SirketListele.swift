//
//  SirketListele.swift
//  Halka Arz
//
//  Created by Mehmet Arıkan on 6.08.2022.
//

import SwiftUI


struct sirketSatiri: View{
    
    var sirketler: [Sirketler] = SirketListesi.hepsi
    
    var body: some View {
        NavigationView{
            
            List(sirketler, id: \.id){ sirket in
                NavigationLink(destination: SirketDetay(sirket: sirket)) {
                    HStack{
                        Image(sirket.logo)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60, alignment: .leading)
                            .cornerRadius(4)
                            .padding(.vertical, 3)
                        
                        VStack(alignment:.leading, spacing: 3){
                            Text(sirket.bistKodu)
                                .fontWeight(.bold)
                                .font(.subheadline)
                            
                            Text(sirket.baslik)
                                .font(.subheadline)
                                .lineLimit(2)
                                .minimumScaleFactor(0.5) // Metin arttıkça yazı tipini küçültüyor.
                            Text(sirket.arzTarihi)
                                .font(.system(size: 12))
                                .foregroundColor(.secondary)
                        }
                    }
                }
            }.navigationTitle("Halka Arz")
        }
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
    }
}
