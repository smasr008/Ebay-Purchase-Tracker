//
//  WishlistView.swift
//  WishlistFeature
//
import SwiftUI

struct WishlistView: View {
    let items: [Item]

    var body: some View {
        List {
            ForEach(items.filter { $0.isLiked }) { item in
                HStack {
                    Image(item.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                    VStack(alignment: .leading) {
                        Text(item.name)
                            .font(.headline)
                        Text(String(format: "$%.2f", item.price))
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    .padding(.leading, 10)
                }
            }
        }
        .navigationTitle("Wishlist")
    }
}

struct WishlistView_Previews: PreviewProvider {
    static var previews: some View {
        WishlistView(items: [
            Item(name: "Gold necklace", imageName: "item1", price: 89.99, isLiked: true),
            Item(name: "Bear toy", imageName: "item2", price: 19.99, isLiked: false),
            Item(name: "Tshirt pink", imageName: "item3", price: 39.99, isLiked: true),
            Item(name: "Rocking chair", imageName: "item4", price: 39.99, isLiked: false)
        ])
    }
}
