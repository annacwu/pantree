//
//  AddLeafViewViewModel.swift
//  pantree
//
//  Created by Anna Wu on 2/7/24.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation

class AddLeafViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dateAdded = Date()
    @Published var showAlert = false
    
    init() {}
    
    func save() {
        guard canSave else {
            return
        }
        
        // get current user id
        guard let uId = Auth.auth().currentUser?.uid else {
            return
        }
        
        // create model
        let newId = UUID().uuidString
        let newLeaf = LeafItem(
            id: newId,
            title: title,
            dateAdded: dateAdded.timeIntervalSince1970,
            createdDate: Date().timeIntervalSince1970,
            isGone: false)
        
        // save model
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(uId)
            .collection("pantry")
            .document("123")
            .setData(newLeaf.asDictionary())
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
