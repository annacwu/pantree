//
//  ContentView.swift
//  pantree
//
//  Created by Anna Wu on 1/17/24.
//

import SwiftUI
import SwiftData

struct MainView: View {
    @Environment(\.modelContext) var modelContext
    
    @Query var branches: [Branch]
    @Query var leaves: [Leaf]
    
    @State private var showingAddScreen = false
    
    var body: some View {
        NavigationStack{
            List {
                ForEach(branches) { branch in
                    DisclosureGroup {
                        ForEach(leaves) { leaf in
                            Text(leaf.name)
                        }
                    } label: {
                        Text(branch.name)
                            .font(.headline)
                    }
                }
            }
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
        
        //DEAL WITH THIS NEXT
//        NavigationStack{
//            List(branches) { branch in
//                Text(branch.name)
//            }
//            .navigationTitle("Branches")
//            .toolbar{
//                Button("Add"){
//                    let branch = Branch(name: "anna", type: "admin")
//                    modelContext.insert(branch)
//                    }
//                }
//            }
        }
//        NavigationStack {
//            List {
//                ForEach(branches) { branch in
//                    NavigationLink(value: branch){
//                        HStack {
//                            VStack(alignment: .leading) {
//                                Text(branch.name)
//                                    .font(.headline)
//                            }
//                        }
//                    }
//                }
//            }
            
        }
    }

#Preview {
    MainView()
}
