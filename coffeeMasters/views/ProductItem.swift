//
//  Product.swift
//  coffeeMasters
//
//  Created by Chomba Chanda on 23/10/2023.
//

import SwiftUI

struct ProductItem: View {
    var product: Product
    
    var body: some View {
            VStack{
                AsyncImage(url: product.imageURL)
                    .frame(width: 300, height: 150)
                    .background(Color("AccentColor"))
                HStack {
                    VStack(alignment: .leading) {
                        Text(product.name)
                            .font(.title3)
                            .bold()
                        Text("$ \(product.price, specifier: "%.2f")")
                            .font(.caption)

                    }.padding(8)
                    Spacer()
                }
            }
            .background(Color("SurfaceBackground"))
            .cornerRadius(10)
            .padding(.trailing)
        }
}

#Preview {
    ProductItem(product: Product(id: 12, name: "Product Name", description: "This is a product description", price: 3.565))
}
