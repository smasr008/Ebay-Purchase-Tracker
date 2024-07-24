//
//  ContentView.swift
//  WishlistFeature
//
import SwiftUI

struct ContentView: View {
    @State private var items = [
        Item(name: "Gold necklace", imageName: "item1", price: 89.99, isLiked: false),
        Item(name: "Bear toy", imageName: "item2", price: 19.99, isLiked: false),
        Item(name: "T shirt pink", imageName: "item3", price: 39.99, isLiked: false),
        Item(name: "Rocking chair", imageName: "item4", price: 239.99, isLiked: false)
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
                            
                            VStack(alignment: .leading) {
                                Text(item.name)
                                    .font(.headline)
                                Text(String(format: "$%.2f", item.price))
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
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
