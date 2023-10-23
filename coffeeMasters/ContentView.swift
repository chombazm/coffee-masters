//
//  ContentView.swift
//  coffeeMasters
//
//  Created by Chomba Chanda on 22/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomePage()
                .tabItem {
                    Image(systemName:  "cup.and.saucer")
                    Text("Home")
                }
            OffersPage()
                .tabItem {
                    Image(systemName:  "tag")
                    Text("Offers")
                }

            OrdersPage()
                .tabItem {
                    Image(systemName:  "cart")
                    Text("My Order")
                }

            InfoPage()
                .tabItem {
                    Image(systemName:  "info.circle")
                    Text("Info")
                }

        }
    }
}

#Preview {
    ContentView()
}
