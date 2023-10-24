//
//  coffeeMastersApp.swift
//  coffeeMasters
//
//  Created by Chomba Chanda on 22/10/2023.
//

import SwiftUI

@main
struct coffeeMastersApp: App {
    var menuManager = MenuManager()
    var categoryManager = CartManager()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(categoryManager)
        }
    }
}
