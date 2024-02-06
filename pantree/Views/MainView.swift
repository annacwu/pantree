//
//  ContentView.swift
//  pantree
//
//  Created by Anna Wu on 1/17/24.
//

import SwiftUI
import SwiftData

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            // signed in
            TabView {
                PantryView(userId: viewModel.currentUserId)
                    .tabItem {
                        Label("home", systemImage: "house")
                    }
                
                ProfileView()
                    .tabItem {
                        Label("profile", systemImage: "person.circle")
                    }
            }
        } else {
            LoginView()
        }
//    @Environment(\.modelContext) var modelContext
//    
////    @Query var branches: [Branch]
////    @Query var leaves: [Leaf]
//    
//    @State private var showingAddScreen = false
    
    
        
//        NavigationStack{
//            List {
//                ForEach(branches) { branch in
//                    DisclosureGroup {
//                        ForEach(leaves) { leaf in
//                            Text(leaf.name)
//                        }
//                    } label: {
//                        Text(branch.name)
//                            .font(.headline)
//                    }
//                }
//            }
//            .navigationTitle("pantree")
//            .toolbar {
//                ToolbarItem(placement: .topBarTrailing) {
//                    Button("Add leaf", systemImage: "plus"){
//                        showingAddScreen.toggle()
//                    }
//                }
//            }
//            .sheet(isPresented: $showingAddScreen) {
//                AddLeafView()
//            }
        
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
//            
//        } belongs to first nav stack
    }

#Preview {
    MainView()
}
