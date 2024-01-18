//
//  Branch.swift
//  pantree
//
//  Created by Anna Wu on 1/21/24.
//

import Foundation
import SwiftData

@Model
class Branch{
    var name: String
    var type: String
    
    init(name: String, type: String){
        self.name = name
        self.type = type
    }
}
