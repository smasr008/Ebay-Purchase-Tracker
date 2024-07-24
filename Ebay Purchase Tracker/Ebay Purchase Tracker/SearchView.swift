import SwiftUI

struct SearchView: View {
    @State private var searches: [Search] = []
    @State private var newSearch = Search()
    @State private var customSavedName: String = ""
    @State private var searchResults: [Auction] = []
    @State private var testAuctions: [Auction] = TestAuctionData.generateTestAuctions()
    @State private var selectedSearchID: UUID? = nil
    @State private var hasSearched: Bool = false

    var body: some View {
        VStack {
            Form {
                Section(header: Text("Price Range")) {
                    TextField("Max Price:", value: $newSearch.maxPrice, format: .number)
                    TextField("Min Price:", value: $newSearch.minPrice, format: .number)
                }
                
                Section(header: Text("Purchase Date Range")) {
                    Toggle("Specify Purchase Date(s)", isOn: $newSearch.specifyPurchaseDates)
                    
                    if newSearch.specifyPurchaseDates {
                        DatePicker("Earliest Date:", selection: Binding(
                            get: { newSearch.earliestDate ?? Date() },
                            set: { newSearch.earliestDate = $0 }
                        ), displayedComponents: .date)
                        
                        DatePicker("Latest Date:", selection: Binding(
                            get: { newSearch.latestDate ?? Date() },
                            set: { newSearch.latestDate = $0 }
                        ), displayedComponents: .date)
                    }
                }
                
                Section(header: Text("Name and Keywords")) {
                    TextField("Name Includes:", text: $newSearch.nameIncludes)
                    Toggle("Search Descriptions?", isOn: $newSearch.searchDescriptions)
                }
                
               
                
                Button(action: {
                    searchResults = testAuctions.filter { auction in
                        newSearch.matches(auction: auction)
                    }
                    
                    hasSearched = true
                    
                    newSearch = Search()
                    customSavedName = ""
                }) {
                    Text("Run Search")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    newSearch = Search()
                    customSavedName = ""
                    hasSearched = false
                }) {
                    Text("Clear Search")
                        .foregroundColor(.blue)
                }
                
                Section(header: Text("Saved Searches")) {
                    Picker("Select a Saved Search", selection: $selectedSearchID) {
                        Text("None").tag(UUID?.none)
                        ForEach(searches) { search in
                            Text(search.savedName ?? "Unnamed Search").tag(search.id as UUID?)
                        }
                    }
                    .onChange(of: selectedSearchID) { newValue in
                        if let selectedID = newValue, let selectedSearch = searches.first(where: { $0.id == selectedID }) {
                            newSearch = selectedSearch
                            customSavedName = selectedSearch.savedName ?? ""
                        }
                    }
                }
            }
            
            if hasSearched {
                if searchResults.isEmpty {
                    Text("Sorry, no auctions matched your search criteria.")
                        .foregroundColor(.gray)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .center)
                } else {
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
                    }
                }
            }
        }
        .navigationTitle("Search")
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
