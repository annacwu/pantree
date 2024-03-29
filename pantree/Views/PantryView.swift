//
//  PantryView.swift
//  pantree
//
//  Created by Anna Wu on 2/5/24.
//
import FirebaseFirestoreSwift
import SwiftUI

struct PantryView: View {
    @StateObject var viewModel: PantryViewViewModel
    @FirestoreQuery var items: [LeafItem]
    
    init(userId: String) {
        self._items = FirestoreQuery(
            collectionPath: "users/\(userId)/pantry"
        )
        self._viewModel = StateObject(
            wrappedValue: PantryViewViewModel(userId: userId) // make view model through this initializer insatead
        )
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in
                    Text(item.title)
                        .swipeActions {
                            Button(role: .destructive) {
                                viewModel.delete(id: item.id)
                            } label: {
                                Text("Delete")
                            }
                        }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("your tree")
            .toolbar {
                Button {
                    viewModel.showingAddLeafView = true
                } label : {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingAddLeafView) {
                AddLeafView(newItemAdded: $viewModel.showingAddLeafView)
            }
        }
    }
}

#Preview {
    PantryView(userId: "") //this is a fake one, need to somehow make it have the real one?
}
