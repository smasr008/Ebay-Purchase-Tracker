//
//  WishlistView.swift
//  WishlistFeature
//
//
import SwiftUI
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
                    
                    Text(item.name)
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
            Item(name: "Item 1", imageName: "item1", isLiked: true),
            Item(name: "Item 2", imageName: "item2", isLiked: false),
            Item(name: "Item 3", imageName: "item3", isLiked: true)
        ])
    }
}
