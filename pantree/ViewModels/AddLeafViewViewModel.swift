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
    @Published var showAlert = false
    
    init() {}
    
    func save() {
        
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            return false
        }
        
        guard dateAdded <= Date().addingTimeInterval(-86400) else { //this doesn't quite work properly yet
            return false
        }
        
        return true
    }
}
