//
//  Haberler.swift
//  Halka Arz
//
//  Created by Mehmet Arıkan on 6.08.2022.
//

import SwiftUI


struct haberSatiri: View{
    var haberler: [HaberlerModel] = HaberlerListesi.hepsi
    var body: some View {
        NavigationView{
            List(haberler, id: \.id){ haber in
                        VStack(alignment:.leading, spacing: 2){
                            Text(haber.baslik)
                                .fontWeight(.bold)
                                .font(.subheadline)
                                .padding(.vertical, 1)
                            Text(haber.aciklama)
                                .font(.footnote)
                                .lineLimit(.max)
                                .minimumScaleFactor(0.4) // Metin arttıkça yazı tipini küçültüyor.
                        }.padding(.bottom, 7.0)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(TextAlignment.leading)
                    .listRowBackground(Color("mor"))
            }
            .navigationTitle("Haberler")
                .listStyle(.sidebar)
        }
    }
}


struct Haberler: View {
    var body: some View {
        haberSatiri()
    }
}

struct Haberler_Previews: PreviewProvider {
    static var previews: some View {
        Haberler()
    }
}
