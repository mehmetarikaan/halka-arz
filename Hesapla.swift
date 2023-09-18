//
//  Hesapla.swift
//  Halka Arz
//
//  Created by Mehmet Arıkan on 6.08.2022.
//

import SwiftUI
import Foundation

public extension UIApplication {
    
    static func dismissKeyboard() {
        let keyWindow = shared.connectedScenes
            .filter({$0.activationState == .foregroundActive})
            .map({$0 as? UIWindowScene})
            .compactMap({$0})
            .first?.windows
            .filter({$0.isKeyWindow}).first
        keyWindow?.endEditing(true)
    }
}


struct Hesapla: View {
    
    @State var adet = Double()
    @State var arz = Double()
    @State var getiri = 0
    @State var gunSonu = 0.0
    
    var anaPara: Double{
        let top = Double(adet * arz)
        return top
    }
    
    let tavanlar: [Int: Double] = [1: 0.1, 2:0.21, 3:0.331, 4:0.464, 5:0.610, 6:0.771, 7:0.948, 8: 1.14, 9: 1.35, 10: 1.59]
    @State var secilen = 1
    

    // yatırılan toplam para
    var yatirilanPara: Double{
        let top = Double(adet * arz)
        return top
    }
    
    // tüm kazanılan para
    var toplam: Double{
        let son = Double(yatirilanPara * Double(tavanlar[secilen]!))
        return son
    }
    
    // hesaptaki tüm para
    var tumPara: Double{
        let all = Double(toplam + yatirilanPara)
        return all
    }
    
    var body: some View {
        
        NavigationView{
            
            ScrollView{
                VStack{
                    VStack{
                        
                        VStack(alignment: .leading){
                            
                            Text("Halka Arz Fiyatı")
                                .foregroundColor(.gray)
                                .font(.subheadline)
                                .frame(alignment: .leading)
                                .padding(0)
                            TextField("10.50₺", value: $arz, format: .number)
                                .padding()
                                .frame(height: 50)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(15)
                                .keyboardType(.decimalPad)
                            
                        }
                        
                        VStack(alignment: .leading){
                            
                            Text("Hisse Adeti")
                                .foregroundColor(.gray)
                                .font(.subheadline)
                                .frame(alignment: .leading)
                                .padding(0)
                            TextField("45", value: $adet, formatter: NumberFormatter())
                                .padding()
                                .frame(height: 50)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(15)
                                .keyboardType(.decimalPad)
                                .toolbar {
                                    ToolbarItemGroup(placement: .keyboard) {
                                        Spacer()
                                        Button("Bitti") {
                                            UIApplication.dismissKeyboard()
                                        }
                                    }
                                    
                                }
                                    
                                }.padding(.vertical, 20)
                            
                        }.onTapGesture(perform: UIApplication.dismissKeyboard)
                        
                        VStack(spacing: 5){
                            Text("Tavan Sayısı Seçiniz")
                                .bold()
                                .font(.subheadline)
                                .foregroundColor(Color.green)
                            
                            Picker("Tavan sayısı seç", selection: $secilen) {
                                ForEach(Array(tavanlar.keys.sorted()), id: \.self){ item in
                                    Text("\(item)")
                                }
                            }.pickerStyle(.segmented)
                                .padding()
                            
                            Text("Yatırılan Para")
                                .fontWeight(.light)
                                .font(.subheadline)
                            Text("\(yatirilanPara, specifier: "%.2f")₺")
                                .bold()
                                .font(.title2)
                            
                            Text("\(secilen) tavan sonunda kazanç")
                                .fontWeight(.light)
                                .font(.subheadline)
                            Text("\(toplam, specifier: "%.2f")₺")
                                .foregroundColor(Color.green)
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            
                            Text("Toplam")
                                .fontWeight(.light)
                                .font(.subheadline)
                                .preferredColorScheme(.dark)
                            Text("\(tumPara, specifier: "%.2f")₺")
                                .bold()
                                .font(.title2)
                            
                        }
                    }.padding()
                }.navigationTitle("Kazanç Hesapla")
                .foregroundColor(Color.white)
                .background(Color("mor"))
                
                
        }
        }
        
    }
    struct Hesapla_Previews: PreviewProvider {
        static var previews: some View {
            Hesapla()
        }
    }
