//
//  ContentView.swift
//  pantree
//
//  Created by Anna Wu on 1/17/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query var branches: [Branch]
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        NavigationStack{
            List(branches) { branch in
                Text(branch.name)
            }
            .navigationTitle("Branches")
            .toolbar{
                Button("Add"){
                    let branch = Branch(name: "anna", type: "admin")
                    modelContext.insert(branch)
                }
            }
            }
        }
    }

#Preview {
    ContentView()
}
