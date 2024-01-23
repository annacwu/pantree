//
//  Leaf.swift
//  pantree
//
//  Created by Anna Wu on 1/21/24.
//

import Foundation
import SwiftData

@Model
class Leaf {
    var name: String
    var date: String
    var low: Bool
    var user: String
    
    init(name: String, date: String, low: Bool, user: String) {
        self.name = name
        self.date = date
        self.low = low
        self.user = user
    }
}
