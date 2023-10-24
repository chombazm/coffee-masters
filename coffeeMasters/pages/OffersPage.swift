//
//  OffersPage.swift
//  coffeeMasters
//
//  Created by Chomba Chanda on 23/10/2023.
//

import SwiftUI

struct OffersPage: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    OfferItem(title: "Early Coffee", description: "10% off. Offer valid from 6am to 9am.")
                    OfferItem(title: "Welcome Gift", description: "25% off on your first order.")
                    OfferItem(title: "Early Coffee", description: "10% off. Offer valid from 6am to 9am.")
                    OfferItem(title: "Welcome Gift", description: "25% off on your first order.")
                    OfferItem(title: "Early Coffee", description: "10% off. Offer valid from 6am to 9am.")
                    OfferItem(title: "Welcome Gift", description: "25% off on your first order.")
                }.listStyle(.plain).listRowSeparator(.hidden)

            }.navigationTitle("Offers")
        }
    }
}

#Preview {
    OffersPage()
}
