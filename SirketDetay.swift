//
//  SirketDetay.swift
//  Halka Arz
//
//  Created by Mehmet Arıkan on 7.08.2022.
//

import SwiftUI

struct SirketDetay: View {
    
    static let mor = Color("mor")
    
    var sirket: Sirketler
    
    var body: some View {
        
        ScrollView{
            
        VStack{
            
        HStack{
            Image(sirket.logo)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .leading)
                .cornerRadius(6)
                .padding(.vertical, 5)
            
            VStack(alignment:.leading, spacing: 3){
                Text(sirket.bistKodu)
                    .fontWeight(.bold)
                    .font(.title2)
                
                Text(sirket.baslik)
                    .font(.title3)
                    .lineLimit(2)
                    .minimumScaleFactor(0.9) // Metin arttıkça yazı tipini küçültüyor.
                    
                
                Text("Halka Arz Bilgileri")
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
                
            }
        }.navigationTitle(sirket.bistKodu)
                
            Text("Güncel Bilgiler")
                .bold()
            Rectangle()
            .frame(height: 1.0, alignment: .bottom)
            .foregroundColor(Color.gray)
            .padding(.horizontal, 50)
            
            VStack{
                HStack{
                    Text("Halka Arz Tarihi:")
                        .fontWeight(.light)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    
                        Spacer()
                   
                    Text(sirket.arzTarihi)
                        .bold()
                        .multilineTextAlignment(.center)
                        
                }.padding(.horizontal, 30)
                .padding(.vertical)
                
                HStack{
                    Text("Pay / Lot Miktarı:")
                        .fontWeight(.light)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    
                        Spacer()
                   
                    Text("\(String(sirket.adet)) Lot")
                        .bold()
                        .multilineTextAlignment(.center)
                        
                }.padding(.horizontal, 30)
                .padding(.vertical)
                
                HStack{
                    Text("Lot Fiyatı: ")
                        .fontWeight(.light)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    
                        Spacer()
                   
                    Text("\(String(sirket.fiyat)) ₺")
                        .bold()
                        .multilineTextAlignment(.center)
                        
                }.padding(.horizontal, 30)
                .padding(.vertical)
                
                HStack{
                    Text("Aracı Kurum: ")
                        .fontWeight(.light)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    
                        Spacer()
                   
                    Text("\(String(sirket.araciKurum))")
                        .bold()
                        .multilineTextAlignment(.center)
                        
                }.padding(.horizontal, 30)
                .padding(.vertical)
                
                HStack{
                    Text("Dağıtım Yöntemi:")
                        .fontWeight(.light)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    
                        Spacer()
                   
                    Text("\(String(sirket.dagitim))")
                        .bold()
                        .multilineTextAlignment(.center)
                        
                }.padding(.horizontal, 30)
                .padding(.vertical)
                
                HStack{
                    Text("Bist Kodu:")
                        .fontWeight(.light)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    
                        Spacer()
                   
                    Text("\(String(sirket.bistKodu))")
                        .bold()
                        .multilineTextAlignment(.center)
                        
                }.padding(.horizontal, 30)
                .padding(.vertical)
                
                HStack{
                    Text("Halka Açıklık Oranı:")
                        .fontWeight(.light)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    
                        Spacer()
                   
                    Text("%\(String(sirket.aciklikOrani))")
                        .bold()
                        .multilineTextAlignment(.center)
                        
                }.padding(.horizontal, 30)
                .padding(.vertical)
            
                VStack{
                    Text("Şirket Hakkında")
                        .bold()
                    Rectangle()
                    .frame(height: 1.0, alignment: .bottom)
                    .foregroundColor(Color.gray)
                    .padding(.horizontal, 50)
                    Text(sirket.aciklama)
                        .padding(.horizontal, 30)
                }
                }
            }
        }
    }
}

struct SirketDetay_Previews: PreviewProvider {
    static var previews: some View {
        SirketDetay(sirket: SirketListesi.hepsi.first!)
    }
}
