//
//  SearchView.swift
//  Ebay Purchase Tracker
//
//  Created by Avery Robbins on 7/22/24.
//

import Foundation
import SwiftUI

struct SearchView: View {
    @State private var searches: [Search] = []
    @State private var newSearch = Search()
    @State private var customSavedName: String = ""
    @State private var testAuctions: [Auction] = TestAuctionData.generateTestAuctions()
    @State private var searchResults: [Auction] = []
    
    var body: some View {
        VStack {
            Form {
                Section(header: Text("Save Options")) {
                    Toggle("Save Search", isOn: $newSearch.saveSearch)
                    
                    if newSearch.saveSearch {
                        TextField("Saved Name (optional):", text: $customSavedName)
                    }
                }
                
                Section(header: Text("Price Range")) {
                    TextField("Max Price:", value: $newSearch.maxPrice, format: .number)
                    TextField("Min Price:", value: $newSearch.minPrice, format: .number)
                }
                
                Section(header: Text("Purchase Date Range")) {
                    DatePicker("Earliest Date:", selection: Binding(
                        get: { newSearch.earliestDate ?? Date() },
                        set: { newSearch.earliestDate = $0 }
                    ), displayedComponents: .date)
                    
                    DatePicker("Latest Date:", selection: Binding(
                        get: { newSearch.latestDate ?? Date() },
                        set: { newSearch.latestDate = $0 }
                    ), displayedComponents: .date)
                }
                
                Section(header: Text("Name and Keywords")) {
                    TextField("Name Includes:", text: $newSearch.nameIncludes)
                    if !newSearch.nameIncludes.isEmpty {
                        Toggle("Search Descriptions?", isOn: $newSearch.searchDescriptions)
                    }
                }
                
                Section(header: Text("Delivery")) {
                    Toggle("Has Arrived", isOn: $newSearch.hasArrived)
                }
                
                Button(action: {
                    newSearch.savedName = customSavedName.isEmpty ? nil : customSavedName
                    newSearch.toggleSave(&searches)
                    newSearch = Search() // Reset the new search
                    customSavedName = "" // Reset the custom saved name
                }) {
                    Text("Save Search")
                }
                
                Button(action: {
                    searchResults = testAuctions.filter { newSearch.matches(auction: $0) }
                }) {
                    Text("Search")
                }
            } // end of Form
            
            if !searchResults.isEmpty {
                List {
                    ForEach(searchResults) { auction in
                        VStack(alignment: .leading) {
                            Text("Item Name: \(auction.itemName)")
                            Text("Price: \(auction.price, specifier: "%.2f")")
                            Text("Seller: \(auction.sellerName)")
                            Text("Date: \(auction.date)")
                            Text("Has Arrived: \(auction.hasArrived ? "Yes" : "No")")
                            Text("Description: \(auction.descriptions)")
                        }
                    }
                } // end of List
            }
        } // end of VStack
    } // end of body
} // end of SearchView





struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
