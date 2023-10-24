//
//  Category.swift
//  coffeeMasters
//
//  Created by Chomba Chanda on 24/10/2023.
//

import Foundation

struct Category: Decodable, Identifiable {
    var name: String
    var products: [Product] = []
    var id: String {name}
    var items: [Product] = []
    func filteredItems(text: String) -> [Product] {
            if text.count > 0 {
                return items.filter({ item in
                    item.name.contains(text)
                })
            } else {
                return items
            }
        }
}
