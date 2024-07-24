//
//  Item.swift
//  WishlistFeature
//
// 
//
import Foundation

struct Item: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String  
    let price: Double
    var isLiked: Bool
}
