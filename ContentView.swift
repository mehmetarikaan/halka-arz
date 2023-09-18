//
//  ContentView.swift
//  Halka Arz
//
//  Created by Mehmet Arıkan on 6.08.2022.
//

import SwiftUI


struct HomeView: View {
    var body: some View {
        SirketListele().background(Color("mor"))
            .preferredColorScheme(.dark)
    }
}

struct HaberlerView: View {
    var body: some View {
        Haberler().background(Color("mor"))
    }
}

struct HesaplaView: View {
    var body: some View {
        
        Hesapla().background(Color("mor"))
        
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
                        Image(systemName: "turkishlirasign.circle")
                        Text("Hesapla")
                    }
                HaberlerView()
                    .tabItem {
                        Image(systemName: "newspaper.circle")
                        Text("Haberler")
                    }
            }.accentColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

