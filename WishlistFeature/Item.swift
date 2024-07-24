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
    var isLiked: Bool
}
