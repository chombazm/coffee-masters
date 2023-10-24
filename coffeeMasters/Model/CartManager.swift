//
//  CartManager.swift
//  coffeeMasters
//
//  Created by Chomba Chanda on 24/10/2023.
//

import Foundation

class CartManager: ObservableObject {
    @Published var cart: [(Product, Int)] = []
}
