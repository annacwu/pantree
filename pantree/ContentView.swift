//
//  ContentView.swift
//  pantree
//
//  Created by Anna Wu on 1/17/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
//    @Query var branches: [Branch]
    @Query var leaves: [Leaf]
    @Environment(\.modelContext) var modelContext
    
    @State private var showingAddScreen = false
    
    var body: some View {
        NavigationStack {
            Text("Count: \(leaves.count)")
                .navigationTitle("pantree")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("Add leaf", systemImage: "plus"){
                            showingAddScreen.toggle()
                        }
                    }
                }
                .sheet(isPresented: $showingAddScreen) {
                    AddLeafView()
                }
        }
        
//        NavigationStack{
//            List(branches) { branch in
//                Text(branch.name)
//            }
//            .navigationTitle("Branches")
//            .toolbar{
//                Button("Add"){
//                    let branch = Branch(name: "anna", type: "admin")
//                    modelContext.insert(branch)
//                }
//            }
//            }
        }
    }

#Preview {
    ContentView()
}
