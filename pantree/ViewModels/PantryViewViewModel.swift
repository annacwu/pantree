//
//  PantryViewViewModel.swift
//  pantree
//
//  Created by Anna Wu on 2/6/24.
//
import FirebaseFirestore
import Foundation

class PantryViewViewModel: ObservableObject {
    @Published var showingAddLeafView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    /// Delete pantry item
    /// - Parameter id: item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document("user_id")
            .collection("pantry")
            .document(id)
            .delete()
    }
}
