//
//  HomePage.swift
//  coffeeMasters
//
//  Created by Chomba Chanda on 23/10/2023.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                        NavigationLink {
                            DetailsPage()
                        } label: {
                            Product()
                        }
                    }
                }
            }
        }.navigationTitle("Products")
    }
}

#Preview {
    HomePage()
}
