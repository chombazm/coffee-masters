//
//  MenuManager.swift
//  coffeeMasters
//
//  Created by Chomba Chanda on 24/10/2023.
//

import Foundation
import Alamofire

class MenuManager: ObservableObject {
  @Published   var menu: [Category] = [
        Category(name: "Hot Coffee", products: [])
    ]
    
    init() {
        refreshItemsFromNetwork()
    }
    
    func refreshItemsFromNetwork()  {
            AF.request("https://firtman.github.io/coffeemasters/api/menu.json")
                .responseDecodable(of: [Category].self) { response in
                    if let menuFromNetwork = response.value {
                        print(response.value)
                        self.menu = menuFromNetwork
                    }  
                }
        }
}

