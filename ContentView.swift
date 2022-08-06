//
//  ContentView.swift
//  Halka Arz
//
//  Created by Mehmet Arıkan on 6.08.2022.
//

import SwiftUI


struct HomeView: View {
    var body: some View {
        SirketListele()
    }
}

struct HaberlerView: View {
    var body: some View {
        Haberler()
    }
}

struct HesaplaView: View {
    var body: some View {
        
        Hesapla()
    }
}


struct ContentView: View {
    var body: some View {
        VStack{
            
            TabView{
                HomeView()
                    .tabItem {
                        Image(systemName: "house.circle")
                        Text("Ana Sayfa")
                    }
                HesaplaView()
                    .tabItem{
                        Image(systemName: "pencil.tip.crop.circle")
                        Text("Hesapla")
                    }
                HaberlerView()
                    .tabItem {
                        Image(systemName: "newspaper.circle")
                        Text("Haberler")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

