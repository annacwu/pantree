//
//  AddLeafViewViewModel.swift
//  pantree
//
//  Created by Anna Wu on 2/7/24.
//

import Foundation

class AddLeafViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dateAdded = Date()
    
    init() {}
}
