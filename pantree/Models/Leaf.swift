//
//  Leaf.swift
//  pantree
//
//  Created by Anna Wu on 1/21/24.
//

import Foundation
import SwiftData

struct LeafItem: Codable, Identifiable {
    let id: String
    let title: String
    let dateAdded: TimeInterval
    let createdDate: TimeInterval
    var isGone: Bool
    
    mutating func setGone(_ state: Bool) {
        isGone = state
    }
}

//@Model
//class Leaf {
//    var name: String
//    var date: String
//    var low: String
//    var user: String
//    
//    init(name: String, date: String, low: String, user: String) {
//        self.name = name
//        self.date = date
//        self.low = low
//        self.user = user
//    }
//}
