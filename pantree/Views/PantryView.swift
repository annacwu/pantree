//
//  PantryView.swift
//  pantree
//
//  Created by Anna Wu on 2/5/24.
//

import SwiftUI

struct PantryView: View {
    @StateObject var viewModel = PantryViewViewModel()
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    var body: some View {
        NavigationView {
            VStack {
                
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
    PantryView(userId: "")
}
