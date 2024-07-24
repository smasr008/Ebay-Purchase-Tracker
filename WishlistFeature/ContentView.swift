//
//  ContentView.swift
//  WishlistFeature
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    @State private var items = [
        Item(name: "Item 1", imageName: "item1", isLiked: false),
        Item(name: "Item 2", imageName: "item2", isLiked: false),
        Item(name: "Item 3", imageName: "item3", isLiked: false)
    ]

    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(items) { item in
                        HStack {
                            Image(item.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                            
                            Text(item.name)
                                .padding(.leading, 10)
                            
                            Spacer()
                            
                            Button(action: {
                                toggleLike(for: item)
                            }) {
                                Image(systemName: item.isLiked ? "heart.fill" : "heart")
                                    .foregroundColor(item.isLiked ? .red : .gray)
                            }
                        }
                    }
                }
                
                NavigationLink(destination: WishlistView(items: items)) {
                    Text("View Wishlist")
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding()
            }
            .navigationTitle("Items List")
        }
    }

    private func toggleLike(for item: Item) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index].isLiked.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
