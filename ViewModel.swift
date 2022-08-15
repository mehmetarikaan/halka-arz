//
//  ViewModel.swift
//  Halka Arz
//
//  Created by Mehmet Arıkan on 10.08.2022.
//

import Foundation
import SwiftUI


struct Veriarzlar: Codable{
   var arzlar: [Arzlar]
}

struct Arzlar: Codable{
    
    let arz_id : String?
    let arz_ad : String?
    let arz_kod : String?
    let arz_baslik : String?
    let arz_bistkodu : String?
    let arz_aciklama : String?
}

class ViewModell: ObservableObject {
    
    @Published var arzlar = [Arzlar]()
    @Published var arzlarr : [Arzlar] = []
    
    func fetchh(){
        guard let url = URL(string: "http://aronapp.xyz/tum_arzlar.php")
        else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) {[weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let arz = try JSONDecoder().decode(Veriarzlar.self, from: data)
                DispatchQueue.main.async {
                    print(arz.arzlar)
                }
                
            } catch {
                print(error)
            }
        }
        task.resume()
    }
    
}

struct ViewModel: View {
    
   // @StateObject var vmm = ViewModel()
    
    var body: some View {
        VStack{
            Button("Mehmet") {
               // vmm.fetchh()
            }.frame(width: 100, height: 100, alignment: .leading)
                .font(.headline)
                .foregroundColor(Color.green)
        }
    }
}
struct ViewModel_Previews: PreviewProvider {
    static var previews: some View {
        ViewModel()
    }
}




