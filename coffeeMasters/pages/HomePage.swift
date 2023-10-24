//
//  HomePage.swift
//  coffeeMasters
//
//  Created by Chomba Chanda on 23/10/2023.
//

import SwiftUI

struct HomePage: View {
    @EnvironmentObject var menuManager: MenuManager
        
        var body: some View {
            VStack {
                NavigationView {
                        List {
                            if menuManager.menu.count == 0 {
                                HStack {
                                    Text("We couldn't fetch the data")
                                    Button("Reload") {
                                    }
                                }
                            } else {
                                ForEach(menuManager.menu) { category in
//                                    if category.products.count > 0 {
//                                        Text(category.name)
//                                        .listRowBackground(Color("Background"))
//                                        .foregroundColor(Color("Secondary"))
//                                        .padding()
//                                    }
                                    
                                    ForEach(category.products) { item in
                                        ZStack {
                                            NavigationLink(destination: DetailsPage()) {
                                                EmptyView()
                                            }.opacity(0)
                                            ProductItem(product: item)
                                                .padding(.top)
                                                .padding(.leading)
                                                .padding(.bottom, 12)

                                        }
                                        
                                    }
                                }
                                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                                .listRowSeparator(.hidden)
                                .listRowBackground(Color("Background"))
                            }
                        }
                        .listStyle(.insetGrouped)
                        .navigationTitle("Products")
                        .background(Color("SurfaceBackground"))
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
}

#Preview {
    HomePage()
}
