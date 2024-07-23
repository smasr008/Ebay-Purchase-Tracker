//  Search.swift
//  Ebay Purchase Tracker
//
//  Created by Avery Robbins on 7/10/24.
//
import Foundation
import SwiftUI

//

// Model representing a search
struct Search: Identifiable, Hashable {
    let id = UUID()
    var saveSearch: Bool = false
    var maxPrice: Float?
    var minPrice: Float?
    var earliestDate: Date?
    var latestDate: Date?
    var nameIncludes: String
    var searchDescriptions: Bool = false
    var hasArrived: Bool = false
    var savedName: String?
    
    mutating func toggleSave(_ searches: inout [Search]) {
        if saveSearch {
            if savedName == nil || savedName?.isEmpty == true {
                savedName = generateUniqueName(existingNames: searches.compactMap { $0.savedName })
            }
            searches.append(self)
        } else {
            if let index = searches.firstIndex(where: { $0.id == self.id }) {
                searches.remove(at: index)
            }
        }
    }
    
    private func generateUniqueName(existingNames: [String]) -> String {
        var newName: String
        var counter = existingNames.count + 1
        
        repeat {
            newName = "saved_search_\(counter)"
            counter += 1
        } while existingNames.contains(newName)
        
        return newName
    }
    
    init(saveSearch: Bool = false, maxPrice: Float? = nil, minPrice: Float? = nil, earliestDate: Date? = nil, latestDate: Date? = nil, nameIncludes: String = "", searchDescriptions: Bool = false, hasArrived: Bool = false, savedName: String? = nil) {
        self.saveSearch = saveSearch
        self.maxPrice = maxPrice
        self.minPrice = minPrice
        self.earliestDate = earliestDate
        self.latestDate = latestDate
        self.nameIncludes = nameIncludes
        self.searchDescriptions = searchDescriptions
        self.hasArrived = hasArrived
        self.savedName = savedName
    }
}

// SearchView to handle search form and results
struct SearchView: View {
    @State private var searches: [Search] = []
    @State private var newSearch = Search()
    @State private var customSavedName: String = ""
    
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
                    Text("Submit Search")
                }
            }
            
            ScrollView {
                List {
                    ForEach(searches) { search in
                        VStack(alignment: .leading) {
                            Text("Max Price: \(search.maxPrice ?? 0.0)")
                            Text("Min Price: \(search.minPrice ?? 0.0)")
                            if let earliestDate = search.earliestDate {
                                Text("Earliest Date: \(earliestDate.formatted(date: .numeric, time: .omitted))")
                            }
                            if let latestDate = search.latestDate {
                                Text("Latest Date: \(latestDate.formatted(date: .numeric, time: .omitted))")
                            }
                            Text("Name Includes: \(search.nameIncludes)")
                            if !search.nameIncludes.isEmpty {
                                Text("Search Descriptions: \(search.searchDescriptions ? "Yes" : "No")")
                            }
                            Text("Has Arrived: \(search.hasArrived ? "Yes" : "No")")
                            Text("Saved Name: \(search.savedName ?? "Not Saved")")
                        }
                    }
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

