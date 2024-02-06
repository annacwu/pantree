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
                    // action
                } label : {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    PantryView(userId: "")
}
