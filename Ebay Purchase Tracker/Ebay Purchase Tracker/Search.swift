//  Search.swift
//  Ebay Purchase Tracker
//
//  Created by Avery Robbins on 7/10/24.
//
import Foundation
import SwiftUI


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
    
    // Function to filter auctions based on search criteria
    func matches(auction: Auction) -> Bool {
        if let maxPrice = maxPrice, auction.price > maxPrice {
            return false
        }
        if let minPrice = minPrice, auction.price < minPrice {
            return false
        }
        if let earliestDate = earliestDate, let auctionDate = dateFormatter.date(from: auction.date), auctionDate < earliestDate {
            return false
        }
        if let latestDate = latestDate, let auctionDate = dateFormatter.date(from: auction.date), auctionDate > latestDate {
            return false
        }
        if !nameIncludes.isEmpty && !auction.itemName.localizedCaseInsensitiveContains(nameIncludes) {
            return false
        }
        if searchDescriptions && !auction.descriptions.localizedCaseInsensitiveContains(nameIncludes) {
            return false
        }
        if hasArrived != auction.hasArrived {
            return false
        }
        return true
    }
    
    // Date formatter for parsing dates
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
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
    
    // Function to handle saving or removing from a list based on saveSearch
    mutating func toggleSave(_ searches: inout [Search]) {
        if saveSearch {
            if savedName == nil || savedName?.isEmpty == true {
                // Generate a unique savedName
                savedName = generateUniqueName(existingNames: searches.compactMap { $0.savedName })
            }
            searches.append(self)
        } else {
            if let index = searches.firstIndex(where: { $0.id == self.id }) {
                searches.remove(at: index)
            }
        }
    }
    
    // Function to generate unique name if saveSearch and no name entered
    private func generateUniqueName(existingNames: [String]) -> String {
        var newName: String
        var counter = existingNames.count + 1
        
        repeat {
            newName = "saved_search_\(counter)"
            counter += 1
        } while existingNames.contains(newName)
        
        return newName
    }
}
